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
