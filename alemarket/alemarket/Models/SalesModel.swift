//
//  SalesModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SalesModel: Codable {
    let period: String
    let completed: Int
    
    enum CodingKeys: String, CodingKey {
        case period, completed
    }
}
