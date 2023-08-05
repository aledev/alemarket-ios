//
//  Value.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct ValueModel: Codable {
    let id: String
    let name: String
    let valueStruct: ValueStructModel?
    let source: Int

    enum CodingKeys: String, CodingKey {
        case id, name, source
        case valueStruct = "struct"
    }
}
