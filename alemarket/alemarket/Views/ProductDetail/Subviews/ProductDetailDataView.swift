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
    let itemWithPictures: ProductModel
    private let soldText = AppStringValue.productSoldQuantityText
    
    // Quantity Computed Property
    private var formattedSoldQuantity: String {
        "\(itemWithPictures.soldQuantity > 0 ? "+" : "")\(itemWithPictures.soldQuantity) \(soldText)"
    }
        
    // MARK: - Body
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack(spacing: 5) {
                    
                    if let condition = item.formattedCondition {
                        
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
                    
                    if let rating = item.starRating {
                        
                        StarRatingView(
                            rating: rating,
                            font: .caption
                        )
                        
                        Text("(\(item.totalTransactions))")
                            .font(.caption)
                            .foregroundColor(.starRatingTintColor)
                        
                    } //: If
                    
                } //: HStack
                .padding(.top, 5)
                
                Text(item.title)
                    .font(.subheadline)
                    .foregroundColor(.primary)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: VStack
            .padding(.top, 10)
            .padding(.bottom, 20)
            
            if let pictures = itemWithPictures.pictures {
                
                ImageCarrouselView(pictures: pictures)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
            } //: If
            
            VStack {
                
                if let originalPrice = item.formattedOriginalPrice {
                    
                    HStack {
                        
                        Text(originalPrice)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough(color: .secondary)
                        
                        Spacer()
                        
                    } //: HStack
                    .padding(.bottom, 0)
                    
                } //: If
                
                HStack {
                    
                    Text(item.formattedPrice)
                        .font(.title2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                                          
                    if let discount = item.formattedDiscount {
                        
                        Text(discount)
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.green)
                        
                    } //: If
                    
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
    private static let item = ProductModel.default
    private static let itemWithPics = ProductModel.defaultWithPictures
    
    static var previews: some View {
        
        // Light Theme
        ProductDetailDataView(item: item, itemWithPictures: itemWithPics)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductDetailDataView(item: item, itemWithPictures: itemWithPics)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
