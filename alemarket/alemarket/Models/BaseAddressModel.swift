//
//  BaseAddressModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct BaseAddressModel: Codable {
    let id: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id, name
    }
}

// MARK: - Equatable Implementation
extension BaseAddressModel: Equatable {
    
    static func == (lhs: BaseAddressModel, rhs: BaseAddressModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name
    }
    
}

// MARK: - Default Value
extension BaseAddressModel {
    
    static var `default`: BaseAddressModel {
        BaseAddressModel(
            id: "id123",
            name: "name123"
        )
    }
    
}
