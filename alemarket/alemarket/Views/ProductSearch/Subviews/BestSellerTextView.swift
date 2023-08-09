//
//  BestSellerTextView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/8/23.
//

import SwiftUI

struct BestSellerTextView: View {
    // MARK: - Properties
    let text: String
    
    // MARK: - Body
    var body: some View {
        
        Text(text.uppercased())
            .font(.caption3)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .padding(.all, 2)
            .background(
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.meliOrangeColor)
                    .shadow(color: Color.secondary, radius: 1)
            )
        
    } //: Body
    
}

// MARK: - Previews
struct BestSellerTextView_Previews: PreviewProvider {
    // Dummy data for the previews
    private static let text = "Más Vendido"
    
    static var previews: some View {
        
        // Light Theme
        BestSellerTextView(text: text)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        BestSellerTextView(text: text)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
