//
//  DifferentialPricingModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct DifferentialPricingModel: Codable {
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case id
    }
}

// MARK: - Equatable Implementation
extension DifferentialPricingModel: Equatable {
    
    static func == (lhs: DifferentialPricingModel, rhs: DifferentialPricingModel) -> Bool {
        lhs.id == rhs.id
    }
    
}

// MARK: - Default Value
extension DifferentialPricingModel {
    
    static var `default`: DifferentialPricingModel {
        DifferentialPricingModel(id: 123)
    }
    
}
