//
//  EshopModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct EshopModel: Codable {
    let eshopId: Int
    let seller: Int
    let nickName: String
    let eshopStatusId: Int
    let siteId: String
    let eshopExperience: Int
    let eshopRubro: String?
    let eshopLocations: [String]?
    let eshopLogoUrl: String

    enum CodingKeys: String, CodingKey {
        case seller
        case eshopId = "eshop_id"
        case nickName = "nick_name"
        case eshopStatusId = "eshop_status_id"
        case siteId = "site_id"
        case eshopExperience = "eshop_experience"
        case eshopRubro = "eshop_rubro"
        case eshopLocations = "eshop_locations"
        case eshopLogoUrl = "eshop_logo_url"
    }
}

// MARK: - Equatable Implementation
extension EshopModel: Equatable {
    
    static func == (lhs: EshopModel, rhs: EshopModel) -> Bool {
        lhs.eshopId == rhs.eshopId &&
        lhs.eshopExperience == rhs.eshopExperience &&
        lhs.eshopLocations == rhs.eshopLocations &&
        lhs.eshopLogoUrl == rhs.eshopLogoUrl &&
        lhs.eshopRubro == rhs.eshopRubro &&
        lhs.eshopStatusId == rhs.eshopStatusId &&
        lhs.nickName == rhs.nickName &&
        lhs.seller == rhs.seller &&
        lhs.siteId == rhs.siteId
    }
    
}

// MARK: - Default Value
extension EshopModel {
    
    static var `default`: EshopModel {
        EshopModel(
            eshopId: 123,
            seller: 123,
            nickName: "nickName123",
            eshopStatusId: 123,
            siteId: "siteId123",
            eshopExperience: 123,
            eshopRubro: "eshopRubro123",
            eshopLocations: ["eshopLocations1", "eshopLocations1"],
            eshopLogoUrl: "eshopLogoUrl123"
        )
    }
    
}
