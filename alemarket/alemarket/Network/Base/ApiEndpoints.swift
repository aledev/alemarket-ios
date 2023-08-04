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
            return "search?q=\(query)"
        case .productDetail(let itemId):
            return "items/\(itemId)?include_attributes=all"
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
