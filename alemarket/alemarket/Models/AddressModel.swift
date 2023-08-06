//
//  Address.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct AddressModel: Codable {
    let stateId: String
    let stateName: String
    let cityId: String
    let cityName: String

    enum CodingKeys: String, CodingKey {
        case stateId = "state_id"
        case stateName = "state_name"
        case cityId = "city_id"
        case cityName = "city_name"
    }
}

// MARK: - Equatable Implementation
extension AddressModel: Equatable {
    
    static func == (lhs: AddressModel, rhs: AddressModel) -> Bool {
        lhs.stateId == rhs.stateId &&
        lhs.stateName == rhs.stateName &&
        lhs.cityId == rhs.cityId &&
        lhs.cityName == rhs.cityName
    }
    
}

// MARK: - Default Value
extension AddressModel {
    
    static var `default`: AddressModel {
        AddressModel(
            stateId: "stateId123",
            stateName: "stateName123",
            cityId: "cityId123",
            cityName: "cityName123"
        )
    }
    
}
