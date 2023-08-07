//
//  NetworkManager.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation

protocol NetworkManagerProtocol {
    func loadData<T: Decodable>(endpoint: ApiEndpoints) async -> Result<T, NetworkError>
}

class NetworkManager: NetworkManagerProtocol {
    // MARK: - Properties
    private let urlProvider: BaseURLProvider
    private let session: URLSessionProtocol
    
    // MARK: - Initializer
    init(urlProvider: BaseURLProvider, session: URLSessionProtocol = URLSession.shared) {
        self.urlProvider = urlProvider
        self.session = session
    }
    
    // MARK: - Public Functions
    func loadData<T: Decodable>(endpoint: ApiEndpoints) async -> Result<T, NetworkError> {
        guard let url = endpoint.url(relativeTo: urlProvider) else {
            return .failure(.invalidURL)
        }
        
        let urlRequest = URLRequest(url: url)
        
        guard let (data, response) = try? await session.data(for: urlRequest) else {
            return .failure(.requestError)
        }
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            return .failure(.invalidServerResponse)
        }
        
        do {
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return .success(decodedData)
            
        } catch {
            debugPrint("Error while trying to decode the data. Error: \(error)")
            return .failure(.decodingError)
        }
    }
}
