//
//  ProductDetailDataView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import SwiftUI

struct ProductDetailDataView: View {
    // MARK: - Properties
    let item: ProductModel
    private let soldText = AppStringValue.productSoldQuantityText
    
    // Quantity Computed Property
    private var formattedSoldQuantity: String {
        "\(item.soldQuantity > 0 ? "+" : "")\(item.soldQuantity) \(soldText)"
    }
    
    // MARK: - Body
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 5) {
                
                HStack(spacing: 5) {
                    
                    if let condition = item.condition {
                        
                        Text(condition)
                            .font(.caption2)
                            .foregroundColor(.secondary)
                            .fontWeight(.light)
                        
                    } //: If
                    
                    Text("|")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .fontWeight(.light)
                    
                    Text(formattedSoldQuantity)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                } //: HStack
                
                Text(item.title)
                    .font(.subheadline)
                    .foregroundColor(.primary)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: VStack
            .padding(.top, 10)
            .padding(.bottom, 20)
            
            if let pictures = item.pictures {
                
                ImageCarrouselView(pictures: pictures)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
            } //: If
            
            VStack {
                
                HStack {
                    
                    Text(item.formattedPrice)
                        .font(.title3)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                } //: HStack
                
            } //: VStack
            .padding(.top, 10)
            
            Spacer()
            
        } //: VStack
        .padding(.horizontal, 20)
        
    } //: Body
    
}

// MARK: - Previews
struct ProductDetailDataView_Previews: PreviewProvider {
    
    // Dummy data for preview
    private static let item = ProductModel.defaultWithPictures
    
    static var previews: some View {
        
        // Light Theme
        ProductDetailDataView(item: item)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductDetailDataView(item: item)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
