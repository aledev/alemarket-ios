//
//  VariationData.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/4/23.
//

import Foundation

struct VariationDataModel: Codable {
    let thumbnail: String
    let ratio: String
    let name: String
    let picturesQty: Int

    enum CodingKeys: String, CodingKey {
        case thumbnail, ratio, name
        case picturesQty = "pictures_qty"
    }
}

// MARK: - Equatable Implementation
extension VariationDataModel: Equatable {
    
    static func == (lhs: VariationDataModel, rhs: VariationDataModel) -> Bool {
        lhs.thumbnail == rhs.thumbnail &&
        lhs.ratio == rhs.ratio &&
        lhs.name == rhs.name &&
        lhs.picturesQty == rhs.picturesQty
    }
    
}

// MARK: - Default Value
extension VariationDataModel {
    
    static var `default`: VariationDataModel {
        VariationDataModel(
            thumbnail: "thumbnail123",
            ratio: "ratio123",
            name: "name123",
            picturesQty: 123
        )
    }
    
}
