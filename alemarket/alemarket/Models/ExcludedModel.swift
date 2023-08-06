//
//  Excluded.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct ExcludedModel: Codable {
    let realValue: Int
    let realRate: Double

    enum CodingKeys: String, CodingKey {
        case realValue = "real_value"
        case realRate = "real_rate"
    }
}

// MARK: - Equatable Implementation
extension ExcludedModel: Equatable {
    
    static func == (lhs: ExcludedModel, rhs: ExcludedModel) -> Bool {
        lhs.realValue == rhs.realValue &&
        lhs.realRate == rhs.realRate
    }
    
}

// MARK: - Default Value
extension ExcludedModel {
    
    static var `default`: ExcludedModel {
        ExcludedModel(
            realValue: 123,
            realRate: 123.123
        )
    }
    
}
