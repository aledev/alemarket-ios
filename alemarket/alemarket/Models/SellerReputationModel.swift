//
//  SellerReputation.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SellerReputationModel: Codable {
    let levelId: String?
    let powerSellerStatus: String?
    let transactions: TransactionsModel
    let metrics: MetricsModel

    enum CodingKeys: String, CodingKey {
        case transactions, metrics
        case levelId = "level_id"
        case powerSellerStatus = "power_seller_status"        
    }
}
