//
//  PagingView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct PagingView: View {
    // MARK: - Properties
    let pagingData: PagingModel
    private let pagingResultsText = AppStringValue.pagingResultsText
    
    // MARK: - Body
    var body: some View {
        
        VStack {
            
            HStack(alignment: .center) {
                
                Text("\(pagingData.total) \(pagingResultsText)")
                    .font(.caption)
                    .foregroundColor(.primary)
                    .fontWeight(.light)
                
                Spacer()
                
                Text("\(pagingData.primaryResults)")
                    .font(.caption)
                    .foregroundColor(.primary)
                    .fontWeight(.light)
                
            } //: HStack
            .frame(height: 30)
            .padding(.horizontal, 10)
            
            Divider()
                .shadow(color: .secondary, radius: 1, x: 0, y: 1)
                .shadow(color: .secondary, radius: 1, x: 0, y: 1)
            
        } //: VStack
        .background(Color.secondarySystemBackgroundColor)
        
    } //: Body
    
}

// MARK: - Previews
struct PagingView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        // Light Theme
        PagingView(pagingData: PagingModel.default)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
        
        // Dark Theme
        PagingView(pagingData: PagingModel.default)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        
    }
    
}
