//
//  ApiEndpoints.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import Foundation

enum ApiEndpoints {
    case productList(String)
    case productDetail(String)
    
    private var value: String {
        switch self {
        case .productList(let query):
            guard let encodedQuery = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
                fatalError("Something wrong happened while trying to url encode the query: \(query)")
            }
            
            return "sites/MLA/search?q=\(encodedQuery)"
        case .productDetail(let itemId):
            return "items/\(itemId)"
        }
    }
    
    func url(relativeTo baseURL: BaseURLProvider) -> URL? {
        guard let url = URL(string: self.value, relativeTo: baseURL.apiBaseURL)?.absoluteURL else {
            debugPrint("The endpoint \(self.value) is not correct")
            return nil
        }
        
        return url
    }
}
