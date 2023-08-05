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
