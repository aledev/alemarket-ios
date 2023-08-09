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
    var region: String
    var onSearchSubmit: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        
        VStack(spacing: 0) {
            
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
            
            HStack(spacing: 5) {
                
                Image(systemName: "box.truck")
                    .font(.footnote)
                    .foregroundColor(.meliBrownColor)
                
                Text(AppStringValue.searchResultsForTitle)
                    .foregroundColor(.meliBrownColor)
                    .font(.footnote)
                
                Text(AppUtils.countryNameFor(region: region))
                    .foregroundColor(.meliBrownColor)
                    .font(.footnote)
                    .fontWeight(.medium)
                
                Spacer()
            }
            .padding(.horizontal)
            
        } //: VStack
        .frame(height: 110)
        .background(Color.meliBackgroundColor)
        
    } //: Body
    
}

// MARK: - Previews
struct SearchView_Previews: PreviewProvider {
    
    // Dummy properties for the previews
    private static let region = AppUtils.defaultRegionCode
    
    static var previews: some View {
        
        // Light Theme
        SearchView(query: .constant("iphone 7"), region: region)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        SearchView(query: .constant("iphone 7"), region: region)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
