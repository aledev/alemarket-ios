//
//  StartRatingView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import SwiftUI

struct StarRatingView: View {
    // MARK: - Properties
    var rating: Int
    var font: Font = .body
    var maximumRating: Int = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.secondarySystemBackgroundColor
    var onColor = Color.starRatingTintColor
    
    // MARK: - Functions
    private func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
    // MARK: - Body
    var body: some View {
        
        HStack(spacing: 0) {
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                
                image(for: number)
                    .font(font)
                    .foregroundColor(number > rating ? offColor : onColor)
                
            } //: ForEach
            
        } //: HStack
        
    } //: Body
    
}

// MARK: - Previews
struct StarRatingView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        StarRatingView(rating: 0)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Rating 0")
        
        StarRatingView(rating: 5)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Rating 5")
        
        // Dark Theme
        StarRatingView(rating: 0)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Rating 0")
                        
        StarRatingView(rating: 5)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Rating 5")
        
    }
    
}
