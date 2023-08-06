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

// MARK: - Equatable Implementation
extension SellerReputationModel: Equatable {
    
    static func == (lhs: SellerReputationModel, rhs: SellerReputationModel) -> Bool {
        lhs.levelId == rhs.levelId &&
        lhs.powerSellerStatus == rhs.powerSellerStatus &&
        lhs.transactions == rhs.transactions &&
        lhs.metrics == rhs.metrics
    }
    
}

// MARK: - Default Value
extension SellerReputationModel {
    
    static var `default`: SellerReputationModel {
        SellerReputationModel(
            levelId: "levelId123",
            powerSellerStatus: "powerSellerStatus123",
            transactions: TransactionsModel.default,
            metrics: MetricsModel.default
        )
    }
    
}
