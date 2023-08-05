//
//  Seller.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SellerModel: Codable {
    let id: Int
    let nickname: String
    let carDealer: Bool
    let realEstateAgency: Bool
    let registrationDate: String
    let tags: [String]
    let carDealerLogo: String
    let permalink: String
    let sellerReputation: SellerReputationModel
    let eshop: EshopModel?
    
    enum CodingKeys: String, CodingKey {
        case id, nickname, tags, permalink, eshop
        case carDealer = "car_dealer"
        case realEstateAgency = "real_estate_agency"
        case registrationDate = "registration_date"
        case carDealerLogo = "car_dealer_logo"
        case sellerReputation = "seller_reputation"
    }
}
