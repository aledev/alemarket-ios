//
//  URLProviderMock.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import Foundation
@testable import alemarket

class MockURLProvider: BaseURLProvider {
    var apiBaseURL: URL {
        URL(string: "https://mock.api.mercadolibre.com/")!
    }    
}
