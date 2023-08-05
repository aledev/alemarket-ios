//
//  ValueStructModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct ValueStructModel: Codable {
    let number: Double?
    let unit: String?
    
    enum CodingKeys: String, CodingKey {
        case number, unit
    }
}
