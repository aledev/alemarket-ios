//
//  ProductListView.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import SwiftUI

struct ProductListView: View {
    // MARK: - Properties
    let title: String
    var searchResult: ApiResult<SearchResultModel>?
    
    // MARK: - Body
    var body: some View {
            
        VStack {
            
            if let result = searchResult {
                
                switch result {
                case .response(let searchResult):
                    
                    PagingView(pagingData: searchResult.paging)
                    
                    if searchResult.paging.total > 0 {
                        
                        List(searchResult.results, id: \.id) { item in
                            
                            NavigationLink(destination: ProductDetailView(title: title, item: item)) {
                                
                                ProductListItemView(item: item)
                                
                            } //: NavigationLink
                            
                        } //: List
                        .listStyle(.plain)
                        
                    } else {
                        
                        EmptyResultView()
                        
                    } //: If-Else
                    
                case .error(let error):
                    
                    ResultErrorView(error: error)
                        .padding(.top, 20)
                    
                } //: Switch
                
            } //: If
            
        } //: VStack
        
    } //: Body
    
}

// MARK: - Previews
struct ProductListView_Previews: PreviewProvider {
    
    // Dummy properties for visualization
    private static let dummyTitle = "iPhone 12 Pro Max"
    private static let resultWithData = ApiResult.response(SearchResultModel.default)
    private static let resultWithEmptyData = ApiResult.response(SearchResultModel.defaultWithEmptyData)
    private static let resultWithError = ApiResult<SearchResultModel>.error(NetworkError.requestError.errorMessage)
    
    static var previews: some View {
        
        // Light Theme with data
        ProductListView(title: dummyTitle, searchResult: resultWithData)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme w/data")
        
        
        // Light Theme with error
        ProductListView(
            title: dummyTitle,
            searchResult: resultWithError
        )
        .preferredColorScheme(.light)
        .previewDisplayName("Light Theme w/error")
        
        // Light Theme with empty response
        ProductListView(
            title: dummyTitle,
            searchResult: resultWithEmptyData
        )
        .preferredColorScheme(.light)
        .previewDisplayName("Light Theme Empty")
                    
        
        // Dark Theme with data
        ProductListView(
            title: dummyTitle,
            searchResult: resultWithData
        )
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Theme w/data")
        
        // Dark Theme with error
        ProductListView(
            title: dummyTitle,
            searchResult: resultWithError
        )
        .preferredColorScheme(.dark)
        .previewDisplayName("Dark Theme w/error")
        
        // Light Theme with empty response
        ProductListView(title: dummyTitle, searchResult: nil)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme Empty")
        
    }
    
}
