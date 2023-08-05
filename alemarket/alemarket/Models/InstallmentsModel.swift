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
