//
//  ProductDescriptionView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/9/23.
//

import SwiftUI

struct ProductDescriptionView: View {
    // MARK: - Properties
    @StateObject private var viewModel = ProductDescriptionViewModel(
        productService: ProductService(
            networkManager: NetworkManager(
                urlProvider: ProdURLProvider()
            )
        )
    )
    let item: ProductModel
    
    // MARK: - Properties
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text(AppStringValue.productDescriptionTitle)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                if let result = viewModel.result {
                    
                    switch result {
                        
                    case .response(let description):
                        
                        Text(description.plainText)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.leading)
                            .fontWeight(.regular)
                        
                    case .error(let error):
                        
                        ResultErrorView(error: error)
                        
                    }
                    
                } else {
                    
                    Text(AppStringValue.productWithoutDescriptionText)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                        .fontWeight(.regular)
                    
                } //: If-Else
                
            } //: VStack
            
            if viewModel.loading {
                
                LoadingView()
                
            } //: If
            
        } //: ZStack
        .task {
            // Load the product description
            await viewModel.productDescription(id: item.id)
        }
        
    } //: Body
    
}

// MARK: - Previews
struct ProductDescriptionView_Previews: PreviewProvider {
    
    // Dummy data for the previews
    private static let item = ProductModel.default
    
    static var previews: some View {
        
        // Light Theme
        ProductDescriptionView(item: item)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductDescriptionView(item: item)
            .preferredColorScheme(.light)
            .previewDisplayName("Dark Theme")
        
    }
}
