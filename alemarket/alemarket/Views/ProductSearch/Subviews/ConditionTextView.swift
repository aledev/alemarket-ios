//
//  ConditionTextView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/8/23.
//

import SwiftUI

struct ConditionTextView: View {
    // MARK: - Properties
    let condition: String
    
    // MARK: - Body
    var body: some View {
        
        Text(condition)
            .font(.caption2)
            .foregroundColor(.secondary)
            .fontWeight(.light)
            .padding(.all, 2)
            .background(
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.secondarySystemBackgroundColor)
                    .shadow(color: Color.secondary, radius: 1)                    
            )
        
    } //: Body
    
}

// MARK: - Previews
struct ConditionTextView_Previews: PreviewProvider {
    // Dummy data for the previews
    private static let condition = "Nuevo"
    
    static var previews: some View {
        
        // Light Theme
        ConditionTextView(condition: condition)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ConditionTextView(condition: condition)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
