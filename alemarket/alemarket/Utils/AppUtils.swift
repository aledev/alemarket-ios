//
//  AppUtils.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation


// MARK: - Static App Values
class AppUtils {
        
    // SiteId
    static let defaultRegionCode = "UY"
    static let siteIdArgentina = "MLA"
    static let siteIdBrazil = "MLB"
    static let siteIdBolivia = "MBO"
    static let siteIdChile = "MLC"
    static let siteIdColombia = "MCO"
    static let siteIdEcuador = "MEC"
    static let siteIdParaguay = "MPY"
    static let siteIdPeru = "MPE"
    static let siteIdUruguay = "MLU"
    
    // CountryNames
    static let countryNameForArgentina = "Argentina"
    static let countryNameForBolivia = "Bolivia"
    static let countryNameForBrasil = "Brasil"
    static let countryNameForChile = "Chile"
    static let countryNameForColombia = "Colombia"
    static let countryNameForEcuador = "Ecuador"
    static let countryNameForParaguay = "Paraguay"
    static let countryNameForPeru = "Peru"
    static let countryNameForUruguay = "Uruguay"
    
    // Product Keys
    static let attributeConditionId = "ITEM_CONDITION"
    static let bestSellerCandidate = "best_seller_candidate"
    
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
        case "BO":
            return siteIdBolivia
        case "BR":
            return siteIdBrazil
        case "CL":
            return siteIdChile
        case "CO":
            return siteIdColombia
        case "EC":
            return siteIdEcuador
        case "PY":
            return siteIdParaguay
        case "PE":
            return siteIdPeru
        default:
            return siteIdUruguay
        }
    }
    
    static func countryNameFor(region: String) -> String {
        switch region {
        case "AR":
            return "Argentina"
        case "BO":
            return "Bolivia"
        case "BR":
            return "Brasil"
        case "CL":
            return "Chile"
        case "CO":
            return "Colombia"
        case "EC":
            return "Ecuador"
        case "PY":
            return "Paraguay"
        case "PE":
            return "Peru"
        default:
            return "Uruguay"
        }
    }
    
}
