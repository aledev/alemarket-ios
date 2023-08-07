//
//  SearchView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Properties
    private let searchPlaceholder = AppStringValue.searchPlaceholder
    @Binding var query: String
    var onSearchSubmit: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
            TextField(searchPlaceholder, text: $query)
                .submitLabel(.search)
                .padding(.horizontal)
                .frame(height: 40)
                .background(
                    Color.secondarySystemBackgroundColor
                )
                .cornerRadius(10)
                .padding()
                .onSubmit {
                    onSearchSubmit?()
                }
            
            // Add clear button
            if !query.isEmpty {
                
                Button(action: {
                    query = ""
                }) {
                    
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                    
                } //: Button
                .padding(.trailing, 5)
                
            } //: If
                        
        } //: ZStack
        .frame(height: 100)
        .background(Color.meliBackgroundColor)
        
    } //: Body
    
}

// MARK: - Previews
struct SearchView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        SearchView(query: .constant("iphone 7"))
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        SearchView(query: .constant("iphone 7"))
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
