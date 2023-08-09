//
//  Attribute.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct AttributeModel: Identifiable, Codable {
    let id: String
    let name: String
    let valueId: String?
    let valueName: String?
    let attributeGroupId: String
    let attributeGroupName: String
    let valueStruct: ValueStructModel?
    let values: [ValueModel]
    let source: Int?
    let valueType: String?

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

// MARK: - Equatable Implementation
extension AttributeModel: Equatable {
    
    static func == (lhs: AttributeModel, rhs: AttributeModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.valueId == rhs.valueId &&
        lhs.valueName == rhs.valueName &&
        lhs.attributeGroupId == rhs.attributeGroupId &&
        lhs.attributeGroupName == rhs.attributeGroupName &&
        lhs.valueStruct == rhs.valueStruct &&
        lhs.values == rhs.values &&
        lhs.source == rhs.source &&
        lhs.valueType == rhs.valueType
    }
    
}

// MARK: - Default Value
extension AttributeModel {
    
    static var `default`: AttributeModel {
        AttributeModel(
            id: "id123",
            name: "name123",
            valueId: "valueId123",
            valueName: "valueName123",
            attributeGroupId: "attributeGroupId123",
            attributeGroupName: "atributeGroupName123",
            valueStruct: ValueStructModel.default,
            values: [ValueModel.default],
            source: 123,
            valueType: "valueType123"
        )
    }
    
}

