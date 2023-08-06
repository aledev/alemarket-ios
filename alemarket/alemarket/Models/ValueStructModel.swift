//
//  ValueStructModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct ValueStructModel: Codable {
    let number: Double?
    let unit: String?
    
    enum CodingKeys: String, CodingKey {
        case number, unit
    }
}

// MARK: - Equatable Implementation
extension ValueStructModel: Equatable {
    
    static func == (lhs: ValueStructModel, rhs: ValueStructModel) -> Bool {
        lhs.number == rhs.number &&
        lhs.unit == rhs.unit
    }
    
}


// MARK: - Default Value
extension ValueStructModel {
    
    static var `default`: ValueStructModel {
        ValueStructModel(
            number: 123.12,
            unit: "unit123"
        )
    }
    
}
