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

// MARK: - Equatable Implementation
extension SellerModel: Equatable {
    
    static func == (lhs: SellerModel, rhs: SellerModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.nickname == rhs.nickname &&
        lhs.carDealer == rhs.carDealer &&
        lhs.realEstateAgency == rhs.realEstateAgency &&
        lhs.registrationDate == rhs.registrationDate &&
        lhs.tags == rhs.tags &&
        lhs.carDealerLogo == rhs.carDealerLogo &&
        lhs.permalink == rhs.permalink &&
        lhs.sellerReputation == rhs.sellerReputation &&
        lhs.eshop == rhs.eshop
    }
    
}


// MARK: - Default Value
extension SellerModel {
    
    static var `default`: SellerModel {
        SellerModel(
            id: 123,
            nickname: "nickname123",
            carDealer: true,
            realEstateAgency: true,
            registrationDate: "registrationDate123",
            tags: ["tag1", "tag2"],
            carDealerLogo: "carDealerLogo123",
            permalink: "permalink123",
            sellerReputation: SellerReputationModel.default,
            eshop: EshopModel.default
        )
    }
    
}
