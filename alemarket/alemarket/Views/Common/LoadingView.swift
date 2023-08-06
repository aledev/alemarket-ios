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
            .tint(.accentColor)
            .foregroundColor(.accentColor)
            .font(.title2)
        
    }
    
}

// MARK: - Previews
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
