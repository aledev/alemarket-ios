//
//  ProductServiceProvider.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation

protocol ProductServiceProvider {
    func findProductsByQuery(with query: String) async -> ApiResult<SearchResultModel>
    func productDetailById(with itemId: String) async -> ApiResult<ProductModel>
}

class ProductService: ProductServiceProvider {
    // MARK: - Properties
    typealias SearchResult = Result<SearchResultModel, NetworkError>
    typealias ProductResult = Result<ProductModel, NetworkError>
    private let networkManager: NetworkManagerProtocol
    
    // MARK: - Initializer
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    // MARK: - Public Functions
    func findProductsByQuery(with query: String) async -> ApiResult<SearchResultModel> {
        let region = Locale.current.region?.identifier ?? AppUtils.defaultRegionCode
        let siteId = AppUtils.currentSiteIdFor(region: region)
        let result: SearchResult = await networkManager.loadData(endpoint: .productList(siteId, query))
        
        switch result {
        case .success(let data):
            return .response(data)
        case .failure(let error):
            debugPrint("Error on the findProductsByQuery request. Detail: \(error)")
            return .error(error.errorMessage)
        }
    }
    
    func productDetailById(with itemId: String) async -> ApiResult<ProductModel> {
        let result: ProductResult = await networkManager.loadData(endpoint: .productDetail(itemId))
        
        switch result {
        case .success(let data):
            return .response(data)
        case .failure(let error):
            debugPrint("Error on the productDetailById request. Detail: \(error.errorMessage)")
            return .error(error.errorMessage)
        }
    }
}
