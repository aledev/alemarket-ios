//
//  MockNetworkManager.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation
@testable import alemarket

class MockNetworkManager: NetworkManagerProtocol {
    // MARK: - Properties
    var data: Decodable?
    var error: NetworkError?
    
    // MARK: - Public Functions
    func loadData<T: Decodable>(endpoint: ApiEndpoints) async -> Result<T, NetworkError> {
        if let error = error {
            return .failure(error)
        }
        
        if let data = data as? T {
            return .success(data)
        }
                
        fatalError("You must set the data or the error properties!")
    }    
}
