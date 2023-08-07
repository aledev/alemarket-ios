//
//  ProductDetailView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @StateObject private var viewModel = ProductDetailViewModel(
        productService: ProductService(
            networkManager: NetworkManager(
                urlProvider: ProdURLProvider()
            )
        )
    )
    let item: ProductModel
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            
            if let detail = viewModel.result {
                
                ScrollView {
                    
                    switch detail {
                        
                    case .response(let item):
                        
                        ProductDetailDataView(item: item)
                        
                    case .error(let error):
                        
                        ResultErrorView(error: error)
                            .padding(.horizontal, 20)
                        
                    } //: Switch
                    
                } //: ScrollView
                .padding(.top, 5)
                
            } //: If
            
            if viewModel.loading {
                
                LoadingView()
                
            }
            
        } //: ZStack
        .task {
            await viewModel.productDetail(id: item.id)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(item.title)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Color.meliBackgroundColor, for: .navigationBar)
        
    } //: Body
    
}

// MARK: - Previews
struct ProductDetailView_Previews: PreviewProvider {
        
    static var previews: some View {
        
        // Light Theme
        ProductDetailView(item: ProductModel.default)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductDetailView(item: ProductModel.default)
            .preferredColorScheme(.light)
            .previewDisplayName("Dark Theme")
        
    }
    
}
