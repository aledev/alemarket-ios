//
//  ProductDetailViewModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

@MainActor
class ProductDetailViewModel: ObservableObject {
    // MARK: - Properties
    @Published var result: ApiResult<ProductModel>?
    @Published var loading: Bool = false
    private let productService: ProductServiceProvider
    
    // MARK: - Initializer
    init(productService: ProductServiceProvider) {
        self.productService = productService
    }
 
    // MARK: - Public Functions
    func productDetail(id: String) async {
        self.loading = true
        defer { self.loading = false }
        
        self.result = await productService.productDetailById(with: id)
    }
}
