//
//  SearchResult.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct SearchResultModel: Codable {
    let siteId: String
    let countryDefaultTimeZone: String
    let query: String
    let paging: PagingModel
    let results: [ProductModel]
    
    enum CodingKeys: String, CodingKey {
        case query, paging, results
        case siteId = "site_id"
        case countryDefaultTimeZone = "country_default_time_zone"        
    }
}

// MARK: - Equatable Implementation
extension SearchResultModel: Equatable {
    
    static func == (lhs: SearchResultModel, rhs: SearchResultModel) -> Bool {
        lhs.siteId == rhs.siteId &&
        lhs.countryDefaultTimeZone == rhs.countryDefaultTimeZone &&
        lhs.query == rhs.query &&
        rhs.paging == rhs.paging
    }
    
}

// MARK: - Default Value
extension SearchResultModel {
    
    static var `default`: SearchResultModel {
        SearchResultModel(
            siteId: "siteId123",
            countryDefaultTimeZone: "countryDefaultTimeZone123",
            query: "query123",
            paging: PagingModel.default,
            results: [ProductModel.default]
        )
    }
    
    static var defaultWithEmptyData: SearchResultModel {
        SearchResultModel(
            siteId: "siteId123",
            countryDefaultTimeZone: "countryDefaultTimeZone123",
            query: "query123",
            paging: PagingModel(total: 0, primaryResults: 0, offset: 0, limit: 50),
            results: []
        )
    }
    
}
