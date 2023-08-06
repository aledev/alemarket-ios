//
//  SalesModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct SalesModel: Codable {
    let period: String
    let completed: Int
    
    enum CodingKeys: String, CodingKey {
        case period, completed
    }
}

// MARK: - Equatable Implementation
extension SalesModel: Equatable {
    
    static func == (lhs: SalesModel, rhs: SalesModel) -> Bool {
        lhs.period == rhs.period &&
        lhs.completed == rhs.completed
    }
    
}

// MARK: - Default Value
extension SalesModel {
    
    static var `default`: SalesModel {
        SalesModel(
            period: "period123",
            completed: 123
        )
    }
    
}
