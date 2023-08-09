//
//  ProductAttributesView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/8/23.
//

import SwiftUI

struct ProductAttributesView: View {
    // MARK: - Properties
    let attributes: [AttributeModel]
    
    // MARK: - Body
    var body: some View {
        
        if attributes.count > 0 {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text(AppStringValue.productAttributesTitle)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                ForEach(attributes, id: \.id) { item in
                    
                    VStack {
                        
                        HStack {
                            
                            Text(item.name)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                            
                            Spacer()
                            
                            VStack {
                                
                                ForEach(item.values, id: \.id) { value in
                                    
                                    Text(value.name ?? "-")
                                        .font(.caption)
                                        .fontWeight(.light)
                                        .foregroundColor(.primary)
                                    
                                } // ForEach
                                
                            } //: VStack
                            
                        } //: HStack
                        
                    } //: VStack
                    .padding(.vertical, 5)
                    
                } //: List
                .listStyle(.grouped)
                
            } //: VStack
            
        } //: If
        
    } //: Body
    
}

// MARK: - Previews
struct ProductAttributesView_Previews: PreviewProvider {
    
    // Dummy data for the preview
    private static let attributes = [AttributeModel.default]
    
    static var previews: some View {
        
        // Light Theme
        ProductAttributesView(attributes: attributes)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductAttributesView(attributes: attributes)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
