//
//  Attribute.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct AttributeModel: Codable {
    let id: String
    let name: String
    let valueId: String?
    let valueName: String?
    let attributeGroupId: String
    let attributeGroupName: String
    let valueStruct: ValueStructModel?
    let values: [ValueModel]
    let source: Int
    let valueType: String

    enum CodingKeys: String, CodingKey {
        case id, name, values, source
        case valueId = "value_id"
        case valueName = "value_name"
        case attributeGroupId = "attribute_group_id"
        case attributeGroupName = "attribute_group_name"
        case valueStruct = "value_struct"
        case valueType = "value_type"
    }
}


