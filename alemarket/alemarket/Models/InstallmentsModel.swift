//
//  Installments.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct InstallmentsModel: Codable {
    let quantity: Int
    let amount: Double
    let rate: Double
    let currencyId: String

    enum CodingKeys: String, CodingKey {
        case quantity, amount, rate
        case currencyId = "currency_id"
    }
}

// MARK: - Equatable Implementation
extension InstallmentsModel: Equatable {
    
    static func == (lhs: InstallmentsModel, rhs: InstallmentsModel) -> Bool {
        lhs.quantity == rhs.quantity &&
        lhs.amount == rhs.amount &&
        lhs.rate == rhs.rate &&
        lhs.currencyId == rhs.currencyId
    }
    
}

// MARK: - Default Value
extension InstallmentsModel {
    
    static var `default`: InstallmentsModel {
        InstallmentsModel(
            quantity: 123,
            amount: 123.12,
            rate: 123.12,
            currencyId: "currencyId123"
        )
    }
    
}
