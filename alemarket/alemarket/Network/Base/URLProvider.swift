//
//  URLProvider.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import Foundation

protocol BaseURLProvider {
    var apiBaseURL: URL { get }
}

struct ProdURLProvider: BaseURLProvider {
    var apiBaseURL: URL {
        URL(string: "https://api.mercadolibre.com/sites/MLA/")!
    }
}
