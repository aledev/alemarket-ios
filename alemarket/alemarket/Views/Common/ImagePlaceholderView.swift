//
//  ImagePlaceholderView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ImagePlaceholderView: View {
    // MARK: - Properties
    private let loadingText = AppStringValue.loadingText
    var width: CGFloat
    var height: CGFloat
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            
            Image(systemName: "photo.fill")
                .resizable()
                .scaledToFit()
                .frame(width: width * 0.8)
                .aspectRatio(contentMode: .fill)
                .colorMultiply(.primary)
                .opacity(0.2)
            
            ProgressView(loadingText)
                .foregroundColor(.accentColor)
                .tint(.accentColor)
                .font(.footnote)
                .frame(width: width, height: height)
                .background(
                    Color.secondary
                        .opacity(0.1)
                        .cornerRadius(10)
                )
            
        } //: ZStack
        
    } //: Body
}

// MARK: - Previews
struct ImagePlaceholderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        ImagePlaceholderView(width: 100, height: 100)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ImagePlaceholderView(width: 100, height: 100)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
