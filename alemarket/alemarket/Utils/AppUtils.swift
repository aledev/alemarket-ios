//
//  AppUtils.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation

class AppUtils {
    
    static func formatCurrency(value: Double, currencyCode: String? = "USD") -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currencyCode
        
        if let formattedCurrency = formatter.string(from: NSNumber(value: value)) {
            return formattedCurrency
        } else {
            return "\(value)"
        }
    }
    
}
