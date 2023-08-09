//
//  NetworkError.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestError
    case invalidServerResponse
    case decodingError
    
    var errorMessage: String {
        switch self {
        case .invalidURL:
            return AppStringValue.invalidURL
        case .requestError:
            return AppStringValue.requestError
        case .invalidServerResponse:
            return AppStringValue.invalidServerResponse
        case .decodingError:
            return AppStringValue.decodingError
        }
    }
}
