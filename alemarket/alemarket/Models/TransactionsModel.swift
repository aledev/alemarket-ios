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
