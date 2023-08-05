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
