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

// MARK: - Default Value
extension PictureModel {
    
    static var `default`: PictureModel {
        PictureModel(
            id: "695065-MLA49737477253_042022",
            url: "http://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
            secureUrl: "https://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
            size: "423x500",
            maxSize: "1005x1187",
            quality: ""
        )
    }
    
    static var defaultArray: [PictureModel] {
        [
            PictureModel(
                id: "695065-MLA49737477253_042022",
                url: "http://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
                secureUrl: "https://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
                size: "423x500",
                maxSize: "1005x1187",
                quality: ""
            ),
            PictureModel(
                id: "719259-MLA49737477250_042022",
                url: "http://http2.mlstatic.com/D_719259-MLA49737477250_042022-O.jpg",
                secureUrl: "https://http2.mlstatic.com/D_719259-MLA49737477250_042022-O.jpg",
                size: "500x495",
                maxSize: "1170x1159",
                quality: ""
            ),                    
            PictureModel(
                id: "900219-MLA49737477255_042022",
                url: "http://http2.mlstatic.com/D_900219-MLA49737477255_042022-O.jpg",
                secureUrl: "https://http2.mlstatic.com/D_900219-MLA49737477255_042022-O.jpg",
                size: "499x500",
                maxSize: "1159x1160",
                quality: ""
            )
        ]
    }
    
}
