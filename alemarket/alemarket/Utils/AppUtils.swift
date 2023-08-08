//
//  AppUtils.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation


// MARK: - Static App Values
class AppUtils {
        
    static let defaultRegionCode = "UY"
    static let siteIdArgentina = "MLA"
    static let siteIdChile = "MLC"
    static let siteIdBrazil = "MLB"
    static let siteIdUruguay = "MLU"
    static let attributeConditionId = "ITEM_CONDITION"
    
}

// MARK: - Static Functions
extension AppUtils {
    
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
    
    static func currentSiteIdFor(region: String) -> String {
        switch region {
        case "AR":
            return siteIdArgentina
        case "CL":
            return siteIdChile
        case "BR":
            return siteIdBrazil
        default:
            return siteIdUruguay
        }
    }
    
}
