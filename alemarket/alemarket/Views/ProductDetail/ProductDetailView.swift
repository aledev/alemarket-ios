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
    let title: String
    let item: ProductModel
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            
            if let detail = viewModel.result {
                
                ScrollView {
                    
                    switch detail {
                        
                    case .response(let itemWithPictures):
                        
                        ProductDetailDataView(item: item, itemWithPictures: itemWithPictures)
                        
                    case .error(let error):
                        
                        ResultErrorView(error: error)
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                        
                    } //: Switch
                    
                } //: ScrollView
                .padding(.top, 5)
                
            } //: If
            
            if viewModel.loading {
                
                LoadingView()
                
            } //: If
            
        } //: ZStack
        .task {
            // Some User Feedback
            HapticsFeedbackHelper.shared.notify()
            // Get the Product Detail with the Images
            await viewModel.productDetail(id: item.id)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(title)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Color.meliBackgroundColor, for: .navigationBar)        
        
    } //: Body
    
}

// MARK: - Previews
struct ProductDetailView_Previews: PreviewProvider {
        
    static var previews: some View {
        
        // Light Theme
        ProductDetailView(
            title: "iPhone 12 Pro Max",
            item: ProductModel.default
        )
        .preferredColorScheme(.light)
        .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductDetailView(
            title: "iPhone 12 Pro Max",
            item: ProductModel.default
        )
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Theme")
        
    }
    
}
