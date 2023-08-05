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
