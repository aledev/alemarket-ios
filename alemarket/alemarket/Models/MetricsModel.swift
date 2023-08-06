//
//  Metrics.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct MetricsModel: Codable {
    let sales: SalesModel
    let claims: PeriodMetricsModel
    let delayedHandlingTime: PeriodMetricsModel
    let cancellations: PeriodMetricsModel

    enum CodingKeys: String, CodingKey {
        case cancellations, sales, claims
        case delayedHandlingTime = "delayed_handling_time"        
    }
}

// MARK: - Equatable Implementation
extension MetricsModel: Equatable {
    
    static func == (lhs: MetricsModel, rhs: MetricsModel) -> Bool {
        lhs.sales == rhs.sales &&
        lhs.claims == rhs.claims &&
        lhs.delayedHandlingTime == rhs.delayedHandlingTime &&
        lhs.cancellations == rhs.cancellations
    }
    
}


// MARK: - Default Value
extension MetricsModel {
    
    static var `default`: MetricsModel {
        MetricsModel(
            sales: SalesModel.default,
            claims: PeriodMetricsModel.default,
            delayedHandlingTime: PeriodMetricsModel.default,
            cancellations: PeriodMetricsModel.default
        )
    }
    
}




