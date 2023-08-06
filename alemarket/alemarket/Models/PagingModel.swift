//
//  Paging.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct PagingModel: Codable {
    let total: Int
    let primaryResults: Int
    let offset: Int
    let limit: Int

    enum CodingKeys: String, CodingKey {
        case total, offset, limit
        case primaryResults = "primary_results"        
    }
}

// MARK: - Equatable Implementation
extension PagingModel: Equatable {
    
    static func == (lhs: PagingModel, rhs: PagingModel) -> Bool {
        lhs.total == rhs.total &&
        lhs.primaryResults == rhs.primaryResults &&
        lhs.offset == rhs.offset &&
        lhs.limit == rhs.limit
    }
    
}

// MARK: - Default Value
extension PagingModel {
    
    static var `default`: PagingModel {
        PagingModel(
            total: 123,
            primaryResults: 123,
            offset: 123,
            limit: 123
        )
    }
    
}
