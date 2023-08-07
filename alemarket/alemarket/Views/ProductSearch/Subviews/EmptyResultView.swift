//
//  EmptyResultView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct EmptyResultView: View {
    // MARK: - Properties
    private let titleText = AppStringValue.emptyResultTitle
    private let bodyText = AppStringValue.emptyResultBody
    
    // MARK: - Body
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            Spacer()
            
            Image(systemName: "magnifyingglass.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundColor(.secondary)
                .opacity(0.6)
                .padding(.bottom, 10)
            
            Text(titleText)
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(.primary)
            
            Text(bodyText)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundColor(.secondary)
            
            
            Spacer()
            
        } //: VStack
        
    } //: Body
    
}

// MARK: - Previews
struct EmptyResultView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        EmptyResultView()
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        EmptyResultView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
