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

// MARK: - Equatable Implementation
extension RatingsModel: Equatable {
    
    static func == (lhs: RatingsModel, rhs: RatingsModel) -> Bool {
        lhs.negative == rhs.negative &&
        lhs.neutral == rhs.neutral &&
        lhs.positive == rhs.positive
    }
    
}

// MARK: - Default Value
extension RatingsModel {
    
    static var `default`: RatingsModel {
        RatingsModel(
            negative: 123,
            neutral: 123,
            positive: 123
        )
    }
    
}
