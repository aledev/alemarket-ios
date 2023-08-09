//
//  ProductSearchView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductSearchView: View {
    // MARK: - Properties
    @StateObject private var viewModel = ProductListViewModel(
        productService: ProductService(
            networkManager: NetworkManager(
                urlProvider: ProdURLProvider()
            )
        )
    )
    @State private var query: String = ""
    
    // MARK: - Functions
    private func onSearchSubmit() {
        Task {
            // Remove whitespaces
            query = query.trimmedValue
            
            if !query.isEmpty {
                HapticsFeedbackHelper.shared.notify()
                await viewModel.search(query: query)
            }
        }
    }
    
    // MARK: - Body
    var body: some View {
        
        NavigationStack {
        
            ZStack {
                
                VStack {
                    
                    SearchView(
                        query: $query,
                        region: viewModel.region,
                        onSearchSubmit: onSearchSubmit
                    )
                    .padding(.bottom, -8)
                    
                    ProductListView(title: query, searchResult: viewModel.result)
                    
                    Spacer()
                    
                } //: VStack
                
                if viewModel.loading {
                    LoadingView()
                }
                
            } //: ZStack
            .background(Color.systemBackgroundColor)
                        
        } //: NavigationStack
        
    } //: Body
    
}

// MARK: - Previews
struct ProductSearchView_Previews: PreviewProvider {
        
    static var previews: some View {
        
        // Light Theme
        ProductSearchView()
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductSearchView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
