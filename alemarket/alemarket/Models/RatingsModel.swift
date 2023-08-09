//
//  Ratings.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct RatingsModel: Codable {
    let negative: Double
    let neutral: Double
    let positive: Double
    
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
            negative: 123.0,
            neutral: 123.0,
            positive: 123.0
        )
    }
    
}
