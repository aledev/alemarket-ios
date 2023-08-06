//
//  Transactions.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct TransactionsModel: Codable {
    let canceled: Int
    let completed: Int
    let period: String
    let ratings: RatingsModel
    let total: Int
    
    enum CodingKeys: String, CodingKey {
        case canceled, completed, period, ratings, total
    }
}

// MARK: - Equatable Implementation
extension TransactionsModel: Equatable {
    
    static func == (lhs: TransactionsModel, rhs: TransactionsModel) -> Bool {
        lhs.canceled == rhs.canceled &&
        lhs.completed == rhs.completed &&
        lhs.period == rhs.period &&
        lhs.ratings == rhs.ratings &&
        lhs.total == rhs.total
    }
    
}

// MARK: - Default Value
extension TransactionsModel {
    
    static var `default`: TransactionsModel {
        TransactionsModel(
            canceled: 123,
            completed: 123,
            period: "period123",
            ratings: RatingsModel.default,
            total: 123
        )
    }
    
}
