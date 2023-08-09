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
            
            // Condition, Rating and Title
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
            
            // Product Images
            if let pictures = itemWithPictures.pictures {
                
                ImageCarrouselView(pictures: pictures)
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
            } //: If
            
            // Price
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
                            .fontWeight(.medium)
                            .foregroundColor(.meliGreenColor)
                        
                    } //: If
                    
                    Spacer()
                    
                } //: HStack
                
            } //: VStack
            .padding(.vertical, 10)
            
            Divider()
            
            // Seller Info
            if let sellerInfo = item.seller {
                
                VStack {
                    
                    ProductSellerInfoView(item: sellerInfo)
                    
                } //: VStack
                .padding(.vertical, 10)                
                
            } //: If
            
            // Attributes
            VStack {
                
                ProductAttributesView(attributes: item.attributes)
                
            } //: VStack
            .padding(.vertical, 10)
            .padding(.horizontal, 5)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(
                        Color
                            .secondarySystemBackgroundColor
                            .opacity(0.5)
                    )
            )
            
            // Product Description
            VStack {
                
                ProductDescriptionView(item: item)
                
            } //: VStack
            .padding(.vertical, 10)
            .padding(.horizontal, 5)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(
                        Color
                            .secondarySystemBackgroundColor
                            .opacity(0.5)
                    )
            )
            
            Spacer()
            
            Divider()
            
            // Post Link
            if let postLink = item.postLink {
                
                VStack {
                    
                    Link(destination: postLink) {
                        
                        Text(AppStringValue.productSeeOriginalPostButtonText.uppercased())
                            .font(.body)
                            .fontWeight(.light)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(
                                        Color.starRatingTintColor
                                    )
                            )
                        
                    } //: Link
                    
                } //: VStack
                .padding(.vertical, 10)
                
            } //: If
            
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
