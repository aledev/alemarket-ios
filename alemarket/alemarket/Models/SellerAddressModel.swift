//
//  SellerAddress.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SellerAddressModel: Codable {
    let comment: String?
    let addressLine: String?
    let id: Int?
    let latitude: Double?
    let longitude: Double?
    let country: BaseAddressModel?
    let state: BaseAddressModel?
    let city: BaseAddressModel?

    enum CodingKeys: String, CodingKey {
        case id, latitude, longitude, country, state, city, comment
        case addressLine = "address_line"
    }
}

// MARK: - Equatable Implementation
extension SellerAddressModel: Equatable {
    
    static func == (lhs: SellerAddressModel, rhs: SellerAddressModel) -> Bool {
        lhs.comment == rhs.comment &&
        lhs.addressLine == rhs.addressLine &&
        lhs.id == rhs.id &&
        lhs.latitude == rhs.latitude &&
        lhs.longitude == rhs.longitude &&
        lhs.country == rhs.country &&
        lhs.state == rhs.state &&
        lhs.city == rhs.city
    }
    
}

// MARK: - Default Value
extension SellerAddressModel {
    
    static var `default`: SellerAddressModel {
        SellerAddressModel(
            comment: "comment123",
            addressLine: "addressLine123",
            id: 123,
            latitude: 123.0,
            longitude: 123.0,
            country: BaseAddressModel.default,
            state: BaseAddressModel.default,
            city: BaseAddressModel.default
        )
    }
    
}
