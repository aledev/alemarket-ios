//
//  ProductListViewModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import SwiftUI

@MainActor
protocol ProductListViewModelProtocol: ObservableObject {
    var result: ApiResult<SearchResultModel>? { get }
    var loading: Bool { get }
    
    func search(query: String) async
}

@MainActor
class ProductListViewModel: ProductListViewModelProtocol {
    // MARK: - Properties
    @Published var result: ApiResult<SearchResultModel>?
    @Published var loading: Bool
    let productService: ProductServiceProvider
    
    // MARK: - Initializer
    init(productService: ProductServiceProvider,
         result: ApiResult<SearchResultModel>? = nil,
         loading: Bool) {
        self.productService = productService
        self.result = result
        self.loading = loading
    }
 
    // MARK: - Public Functions
    func search(query: String) async {
        self.loading = true
        defer { self.loading = false }
        
        self.result = await productService.findProductsByQuery(query: query)
    }
}
