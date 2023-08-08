//
//  Color+Extension.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import SwiftUI

extension Color {
 
    // MARK: - Static Properties
    static var loadingAccentColor: Color {
        Color("LoadingAccentColor")
    }
    
    static var meliBackgroundColor: Color {
        Color("MeliBackgroundColor")
    }
    
    static var errorColor: Color {
        Color("ErrorColor")
    }
    
    static var meliGreenColor: Color {
        Color("MeliGreenColor")
    }
    
    static var starRatingTintColor: Color {
        Color("StarRatingTintColor")
    }
    
    static var systemBackgroundColor: Color {
        Color(UIColor.systemBackground)
    }
    
    static var secondarySystemBackgroundColor: Color {
        Color(UIColor.secondarySystemBackground)
    }
    
    static var systemGroupedBackgroundColor: Color {
        Color(UIColor.systemGroupedBackground)
    }
    
    static var secondarySystemGroupedBackgroundColor: Color {
        Color(UIColor.secondarySystemGroupedBackground)
    }
    
    // MARK: - Computed Properties
    var uiColor: UIColor? {
        guard let cgColor = self.cgColor else {
            return nil
        }
        
        return UIColor(cgColor: cgColor)
    }
    
}
