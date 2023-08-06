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
    
    var body: some View {
        
        HStack {
            
            TextField(searchPlaceholder, text: $query)
                .submitLabel(.search)
                .frame(height:40)
                .background(.white)
                .cornerRadius(5)
                .padding()
                .onSubmit {
                    onSearchSubmit?()
                }
            
        } //: HStack
        .background(Color.backgroundColor)
        
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(query: .constant(""))
    }
}
