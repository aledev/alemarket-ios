//
//  PictureModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import Foundation

struct PictureModel: Codable {
    let id: String
    let url: String
    let secureUrl: String
    let size: String
    let maxSize: String
    let quality: String
    
    // MARK: - CodingKeys
    enum CodingKeys: String, CodingKey {
        case id, url, size, quality
        case secureUrl = "secure_url"
        case maxSize = "max_size"        
    }
    
}

// MARK: - Equatable Implementation
extension PictureModel: Equatable {

    static func == (lhs: PictureModel, rhs: PictureModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.url == rhs.url &&
        lhs.secureUrl == rhs.secureUrl &&
        lhs.size == rhs.size &&
        lhs.maxSize == rhs.maxSize &&
        lhs.quality == rhs.quality
    }
    
}
