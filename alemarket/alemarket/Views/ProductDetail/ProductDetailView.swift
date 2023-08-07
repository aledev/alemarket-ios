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
                
                switch detail {
                    
                case .response(let item):
                    
                    VStack {
                        
                        AsyncImage(url: item.thumbnailUrl) { image in
                            
                            if let image = image.image {
                                
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(5)
                                
                            } else {
                                
                                ImagePlaceholderView(
                                    width: 100,
                                    height: 100
                                )
                                
                            } //: If-Else
                            
                        } //: AsyncImage
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(item.title)
                                .font(.footnote)
                                .foregroundColor(.primary)
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                            
                            Text(item.formattedPrice)
                                .font(.callout)
                                .fontWeight(.light)
                            
                            Spacer()
                            
                            if let condition = item.condition {
                                
                                Text(condition)
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                                    .fontWeight(.light)
                                
                            } //: If
                            
                            Spacer()
                            
                        } //: VStack
                        
                    } //: VStack
                    
                case .error(let error):
                    
                    ResultErrorView(error: error)
                    
                } //: Switch
                
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
