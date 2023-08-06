//
//  ProductServiceProvider.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation

protocol ProductServiceProvider {
    func findProductsByQuery(query: String) async -> ApiResult<SearchResultModel>
}

class ProductService: ProductServiceProvider {
    // MARK: - Properties
    typealias SearchResult = Result<SearchResultModel, NetworkError>
    let networkManager: NetworkManagerProtocol
    
    // MARK: - Initializer
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    // MARK: - Public Functions
    func findProductsByQuery(query: String) async -> ApiResult<SearchResultModel> {
        let result: SearchResult = await networkManager.loadData(endpoint: .productList(query))
        
        switch result {
        case .success(let data):
            return .response(data)
        case .failure(let error):
            // TODO: Add Logging
            let description = NSLocalizedString(error.errorKey, comment: "")
            return .error(description)
        }
    }
}
