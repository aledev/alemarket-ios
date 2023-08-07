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
        
        HStack(alignment: .center, spacing: 15) {
            
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
            
        } //: HStack
        
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
