//
//  SellerAddress.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SellerAddressModel: Codable {
    let comment: String
    let addressLine: String
    let id: Int?
    let latitude: Int?
    let longitude: Double?
    let country: BaseAddressModel
    let state: BaseAddressModel
    let city: BaseAddressModel

    enum CodingKeys: String, CodingKey {
        case id, latitude, longitude, country, state, city, comment
        case addressLine = "address_line"
    }
}
