//
//  Shipping.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct ShippingModel: Codable {
    let storePickUp: Bool
    let freeShipping: Bool
    let logisticType: String
    let mode: String
    let tags: [String]
    let benefits: String?
    let promise: String?

    enum CodingKeys: String, CodingKey {
        case mode, tags, benefits, promise
        case storePickUp = "store_pick_up"
        case freeShipping = "free_shipping"
        case logisticType = "logistic_type"        
    }
}

// MARK: - Equatable Implementation
extension ShippingModel: Equatable {
    
    static func == (lhs: ShippingModel, rhs: ShippingModel) -> Bool {
        lhs.storePickUp == rhs.storePickUp &&
        lhs.freeShipping == rhs.freeShipping &&
        lhs.logisticType == rhs.logisticType &&
        lhs.mode == rhs.mode &&
        lhs.tags == rhs.tags &&
        lhs.benefits == rhs.benefits &&
        lhs.promise == rhs.promise
    }
    
}

// MARK: - Default Value
extension ShippingModel {
    
    static var `default`: ShippingModel {
        ShippingModel(
            storePickUp: true,
            freeShipping: true,
            logisticType: "logisticType123",
            mode: "mode123",
            tags: ["tag1", "tag2"],
            benefits: "benefits123",
            promise: "promise123"
        )
    }
    
}
