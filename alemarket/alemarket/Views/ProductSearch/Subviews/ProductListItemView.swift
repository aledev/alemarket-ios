//
//  ProductListItemView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductListItemView: View {
    // MARK: - Properties
    var item: ProductModel
    
    // MARK: - Body
    var body: some View {
        
        HStack(alignment: .top, spacing: 15) {
            
            // Thumbnail Image
            VStack {
                
                ThumbnailImageView(imageUrl: item.thumbnailUrl)
                
            } //: VStack
            
            // Item Description
            VStack(alignment: .leading, spacing: 5) {
                
                // Best Seller
                if let bestSeller = item.bestSeller {
                    
                    BestSellerTextView(text: bestSeller)
                                        
                }
                
                // Title
                Text(item.title)
                    .font(.footnote)
                    .foregroundColor(.primary)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                // Price
                HStack {
                    
                    Text(item.formattedPrice)
                        .font(.callout)
                        .fontWeight(.light)
                    
                    if let discount = item.formattedDiscount {
                        
                        Text(discount)
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(.meliGreenColor)
                        
                    } //: If
                    
                } //: HStack
                    
                // Shipping
                if let freeShipping = item.freeShipping {
                    
                    Text(freeShipping)
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.meliGreenColor)
                    
                }
                
                Spacer()
                
                // Condition
                if let condition = item.formattedCondition {
                    
                    ConditionTextView(condition: condition)
                    
                } //: If
                
                Spacer()
                
                // Rating
                if let rating = item.starRating {
                    
                    HStack {
                        
                        StarRatingView(
                            rating: rating,
                            font: .caption2
                        )
                        
                        Text("\(item.totalTransactions)")
                            .font(.caption2)
                            .foregroundColor(.starRatingTintColor)
                        
                    } //: HStack
                    .padding(.bottom, 5)
                     
                } //: If
                
            } //: VStack
            .frame(alignment: .top)
            
        } //: HStack
        .frame(minHeight: 100, maxHeight: 150)
        
    } //: Body
    
}

// MARK: - Previews
struct ProductListItemView_Previews: PreviewProvider {
            
    static var previews: some View {
    
        // Light Theme
        ProductListItemView(item: ProductModel.default)
            .frame(height: 100)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductListItemView(item: ProductModel.default)
            .frame(height: 100)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
