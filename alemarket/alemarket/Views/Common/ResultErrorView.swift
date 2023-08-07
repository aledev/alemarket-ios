//
//  ResultErrorView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import SwiftUI

struct ResultErrorView: View {
    // MARK: - Properties
    let error: String
    
    // MARK: - Body
    var body: some View {
        
        Text(error)
            .multilineTextAlignment(.leading)
            .font(.body)
            .foregroundColor(.errorColor)
        
    } //: Body
    
}

// MARK: - Previews
struct ResultErrorView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        ResultErrorView(error: "Demo Error")
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ResultErrorView(error: "Demo Error")
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
        
    }
    
}
