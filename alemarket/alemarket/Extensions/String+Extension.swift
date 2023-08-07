//
//  String+Extension.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation

extension String {
    
    var convertUrlToHttps: String {
        self.replacingOccurrences(of: "http://", with: "https://")
    }
    
    var removeWhiteSpaces: String {
        self.components(separatedBy: .whitespacesAndNewlines).joined()
    }
    
}
