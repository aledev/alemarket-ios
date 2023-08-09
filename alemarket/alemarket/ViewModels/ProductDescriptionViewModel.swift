//
//  ProductDescriptionViewModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/9/23.
//

import SwiftUI

@MainActor
class ProductDescriptionViewModel: ObservableObject {
    // MARK: - Properties
    @Published var result: ApiResult<ProductDescriptionModel>?
    @Published var loading: Bool = false
    private let productService: ProductServiceProvider
    
    // MARK: - Initializer
    init(productService: ProductServiceProvider) {
        self.productService = productService
    }
 
    // MARK: - Public Functions
    func productDescription(id: String) async {
        self.loading = true
        defer { self.loading = false }
        
        self.result = await productService.productDescriptionById(with: id)
    }
}
