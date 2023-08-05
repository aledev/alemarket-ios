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
