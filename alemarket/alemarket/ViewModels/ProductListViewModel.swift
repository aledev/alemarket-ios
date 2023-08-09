//
//  ProductListViewModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import SwiftUI
import Combine

@MainActor
class ProductListViewModel: ObservableObject {
    // MARK: - Properties
    @Published var region: String = NSLocale.current.region?.identifier ?? AppUtils.defaultRegionCode
    @Published var result: ApiResult<SearchResultModel>?
    @Published var loading: Bool = false
    private let productService: ProductServiceProvider
    private var cancellables: Set<AnyCancellable> = []
    
    // MARK: - Initializer
    init(productService: ProductServiceProvider) {
        self.productService = productService
        
        NotificationCenter.default.publisher(for: NSLocale.currentLocaleDidChangeNotification).sink { [weak self] _ in
            guard let self = self,
                  let identifier = NSLocale.current.region?.identifier else {
                return
            }
            
            self.region = identifier
        }
        .store(in: &cancellables)
    }
 
    // MARK: - Public Functions
    func search(query: String) async {
        self.loading = true
        defer { self.loading = false }
        
        self.result = await productService.findProductsByQuery(for: region, with: query)
    }
}
