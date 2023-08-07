//
//  alemarketApp.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import SwiftUI

@main
struct alemarketApp: App {
    // MARK: - Properties
    @StateObject var productListViewModel = ProductListViewModel(
        productService: ProductService(
            networkManager: NetworkManager(
                urlProvider: ProdURLProvider()
            )
        )
    )
    
    // MARK: - Body
    var body: some Scene {
        
        WindowGroup {
            
            ProductSearchView()
                .environmentObject(productListViewModel)
            
        } //: WindowGroup
        
    } //: Body
}
