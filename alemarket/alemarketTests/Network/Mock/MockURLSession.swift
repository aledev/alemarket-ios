//
//  URLSessionMock.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation
@testable import alemarket

class MockURLSession: URLSessionProtocol {
    // MARK: - Properties
    var data: Data?
    var response: URLResponse?
    var error: Error?
    
    // MARK: - Public Functions
    func data(for request: URLRequest) async throws -> (Data, URLResponse) {
        if let error = error {
            throw error
        }
        
        if let data = data, let response = response {
            return (data, response)
        }
        
        fatalError("You must provide an error or a valid data/response!")
    }
}
