//
//  ProductSellerInfoView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/9/23.
//

import SwiftUI

struct ProductSellerInfoView: View {
    // MARK: - Properties
    let item: SellerModel
    
    // MARK: - Body
    var body: some View {
        
        VStack(spacing: 5) {
            
            // Store Name
            HStack(spacing: 5) {
                
                Text("Vendido por")
                    .font(.caption)
                    .fontWeight(.light)
                
                if let storeURL = item.storeURL {
                    
                    Link(item.nickname.uppercased(), destination: storeURL)
                        .font(.caption)
                        .fontWeight(.light)
                        .tint(.starRatingTintColor)
                    
                } else {
                    
                    Text(item.nickname)
                        .font(.caption)
                        .fontWeight(.light)
                    
                } //: If-Else
                
                Spacer()
                
            } //: HStack
            
            HStack(spacing: 5) {
                
                ForEach(item.tags.indices, id: \.self) { index in
                 
                    Text("\(index > 0 ? "| " : "")\(item.tags[index])")
                        .font(.caption)
                        .fontWeight(.light)
                    
                } //: ForEach
                
                Spacer()
                
            } //: HStack
            
        } //: VStack
        
    } //: Body
    
}

// MARK: - Previews
struct ProductSellerInfoView_Previews: PreviewProvider {
    
    // Dummy data for the preview
    private static let item = SellerModel.default
    
    static var previews: some View {
        
        // Light Theme
        ProductSellerInfoView(item: item)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        ProductSellerInfoView(item: item)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
