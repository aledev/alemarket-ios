//
//  Value.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct ValueModel: Codable {
    let id: String
    let name: String
    let valueStruct: ValueStructModel?
    let source: Int

    enum CodingKeys: String, CodingKey {
        case id, name, source
        case valueStruct = "struct"
    }
}

// MARK: - Equatable Implementation
extension ValueModel: Equatable {
    
    static func == (lhs: ValueModel, rhs: ValueModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.valueStruct == rhs.valueStruct &&
        lhs.source == rhs.source
    }
    
}

// MARK: - Default Value
extension ValueModel {
    
    static var `default`: ValueModel {
        ValueModel(
            id: "id123",
            name: "name123",
            valueStruct: ValueStructModel.default,
            source: 123
        )
    }
    
}
