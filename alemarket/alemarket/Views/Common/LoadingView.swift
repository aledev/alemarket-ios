//
//  LoadingView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct LoadingView: View {
    // MARK: - Properties
    private let loadingText = AppStringValue.loadingText
    
    // MARK: - Body
    var body: some View {
        
        ProgressView(loadingText)
            .foregroundColor(.loadingAccentColor)
            .tint(.loadingAccentColor)
            .font(.callout.weight(.medium))
            .frame(width: 120, height: 120)
            .background(
                Color.secondary
                    .opacity(0.5)
                    .cornerRadius(10)
            )
        
    } //: Body
    
}

// MARK: - Previews
struct LoadingView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        LoadingView()
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        LoadingView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
        
    }
    
}
