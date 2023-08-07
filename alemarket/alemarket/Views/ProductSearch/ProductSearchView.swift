//
//  ProductSearchView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductSearchView: View {
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
        
        NavigationView {
        
            ZStack {
                
                VStack {
                    
                    SearchView(
                        query: $query,
                        onSearchSubmit: onSearchSubmit
                    )
                    .padding(.bottom, -8)
                    
                    ProductListView(searchResult: viewModel.result)
                    
                    Spacer()
                    
                } //: VStack
                
                if viewModel.loading {
                    LoadingView()
                }
                
            } //: ZStack
            .background(Color.systemBackgroundColor)
                        
        } //: NavigationView
        
    } //: Body
    
}

// MARK: - Previews
struct ProductSearchView_Previews: PreviewProvider {
    
    // Preview ViewModel
    @StateObject private static var viewModel = ProductListViewModel(productService: ProductService(networkManager: NetworkManager(urlProvider: ProdURLProvider())))
    
    static var previews: some View {
        
        // Light Theme
        ProductSearchView()
            .environmentObject(viewModel)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductSearchView()
            .environmentObject(viewModel)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
