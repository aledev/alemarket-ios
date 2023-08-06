//
//  ProductListView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductListView: View {
    // MARK: - Properties
    @EnvironmentObject private var viewModel: ProductListViewModel
    @State private var query: String = ""
    
    // MARK: - Functions
    private func onSearchSubmit() {
        Task {
            await viewModel.search(query: query)
        }
    }
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            
            VStack {
                
                SearchView(query: $query, onSearchSubmit: onSearchSubmit)
                
                Spacer()
                                
                
            } //: VStack
            
            if viewModel.loading {
                LoadingView()
            }
            
        } //: ZStack
        
    } //: Body
    
}

// MARK: - Previews
struct ProductListView_Previews: PreviewProvider {
    
    @StateObject private static var viewModel = ProductListViewModel(productService: ProductService(networkManager: NetworkManager(urlProvider: ProdURLProvider())))
    
    static var previews: some View {
        ProductListView()
            .environmentObject(viewModel)
    }
    
}
