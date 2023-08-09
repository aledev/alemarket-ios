//
//  ImageCarrouselView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import SwiftUI

struct ImageCarrouselView: View {
    // MARK: - Properties
    let pictures: [PictureModel]
        
    // MARK: - Body
    var body: some View {
        
        TabView {
            
            ForEach(pictures, id: \.id) { picture in
                
                AsyncImage(url: URL(string: picture.secureUrl)) { image in
                    
                    image.resizable()                        
                    
                } placeholder: {
                    
                    ImagePlaceholderView(
                        width: 300,
                        height: 300
                    )
                    
                } //: AsyncImage
                .scaledToFill()
                .clipped()
                
            } //: ForEach
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .frame(width: 300, height: 300)
        .indexViewStyle(
            PageIndexViewStyle(backgroundDisplayMode: .always)
        )
        
    } //: Body
    
}

// MARK: - Previews
struct ImageCarrouselView_Previews: PreviewProvider {
    
    // Dummy data for the preview
    private static let pictures = PictureModel.defaultArray
    
    static var previews: some View {
        
        // Light Theme
        ImageCarrouselView(pictures: pictures)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ImageCarrouselView(pictures: pictures)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
}
