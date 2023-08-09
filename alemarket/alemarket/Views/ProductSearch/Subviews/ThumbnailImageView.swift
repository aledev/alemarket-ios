//
//  ThumbnailImageView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/8/23.
//

import SwiftUI

struct ThumbnailImageView: View {
    // MARK: - Properties
    let imageUrl: URL?
    
    // MARK: - Body
    var body: some View {
        
        AsyncImage(url: imageUrl) { image in
            
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
        
    } //: Body
    
}

// MARK: - Previews
struct ThumbnailImageView_Previews: PreviewProvider {
    
    // Dummy image for preview
    private static let imageUrl = ProductModel.default.thumbnailUrl
    
    static var previews: some View {
        
        // Light Theme
        ThumbnailImageView(imageUrl: imageUrl)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ThumbnailImageView(imageUrl: imageUrl)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
