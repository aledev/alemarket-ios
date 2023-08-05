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
