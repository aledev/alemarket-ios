//
//  PeriodMetrics.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

struct PeriodMetricsModel: Codable {
    let period: String
    let rate: Double
    let value: Int
    let excluded: ExcludedModel?
    
    enum CodingKeys: String, CodingKey {
        case period, rate, value, excluded
    }
}
