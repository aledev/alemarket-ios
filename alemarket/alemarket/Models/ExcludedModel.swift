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
