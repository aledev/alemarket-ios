//
//  ApiResult.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

enum ApiResult<T> {
    case response(T)
    case error(String)
}
