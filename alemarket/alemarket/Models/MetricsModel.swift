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





