//
//  Ratings.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct RatingsModel: Codable {
    let negative: Int
    let neutral: Int
    let positive: Int
    
    enum CodingKeys: String, CodingKey {
        case negative, neutral, positive
    }
}
