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

// MARK: - Equatable Implementation
extension PeriodMetricsModel: Equatable {
    
    static func == (lhs: PeriodMetricsModel, rhs: PeriodMetricsModel) -> Bool {
        lhs.period == rhs.period &&
        lhs.rate == rhs.rate &&
        lhs.value == rhs.value &&
        lhs.excluded == rhs.excluded
    }
    
}

// MARK: - Default Value
extension PeriodMetricsModel {
    
    static var `default`: PeriodMetricsModel {
        PeriodMetricsModel(
            period: "period123",
            rate: 100.15,
            value: 123,
            excluded: ExcludedModel.default
        )
    }
    
}
