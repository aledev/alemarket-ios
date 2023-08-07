//
//  ProductListViewModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import SwiftUI

@MainActor
class ProductListViewModel: ObservableObject {
    // MARK: - Properties
    @Published var result: ApiResult<SearchResultModel>?
    @Published var loading: Bool = false
    private let productService: ProductServiceProvider
    
    // MARK: - Initializer
    init(productService: ProductServiceProvider) {
        self.productService = productService        
    }
 
    // MARK: - Public Functions
    func search(query: String) async {
        self.loading = true
        defer { self.loading = false }
        
        self.result = await productService.findProductsByQuery(with: query)
    }
}
