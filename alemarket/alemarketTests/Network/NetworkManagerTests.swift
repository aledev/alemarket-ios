//
//  NetworkManagerTests.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import XCTest
@testable import alemarket

final class NetworkManagerTests: XCTestCase {
    // MARK: - Object to test
    var mockURLProvider: MockURLProvider!
    var mockURLSession: MockURLSession!
    var networkManager: NetworkManager!
    
    override func setUp() {
        super.setUp()
        
        mockURLProvider = MockURLProvider()
        mockURLSession = MockURLSession()
        networkManager = NetworkManager(urlProvider: mockURLProvider, session: mockURLSession)
    }

    override func tearDown() {
        mockURLProvider = nil
        mockURLSession = nil
        networkManager = nil
        
        super.tearDown()
    }

    // MARK: - Tests
    func testLoadDataSuccess() async {
        let testData = "{ \"title\": \"Product1\"}".data(using: .utf8)!
        let testResponse = HTTPURLResponse(url: mockURLProvider.apiBaseURL, statusCode: 200, httpVersion: nil, headerFields: nil)!
        
        mockURLSession.data = testData
        mockURLSession.response = testResponse

        let result: Result<TestDecobleResult, NetworkError> = await networkManager.loadData(endpoint: .productList("test"))
        
        switch result {
        case .success(let data):
            XCTAssertEqual(data.title, "Product1")
        case .failure(let error):
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func testLoadDataWithInvalidServerResponse() async {
        let testData = "{ \"title\": \"Product1\"}".data(using: .utf8)!
        let testResponse = HTTPURLResponse(url: mockURLProvider.apiBaseURL, statusCode: 301, httpVersion: nil, headerFields: nil)!
        
        mockURLSession.data = testData
        mockURLSession.response = testResponse

        let result: Result<TestDecobleResult, NetworkError> = await networkManager.loadData(endpoint: .productList("test"))
        
        switch result {
        case .success(_):
            XCTFail("Unexpected value. The expected case was invalidServerResponse")
        case .failure(let error):
            XCTAssertEqual(error, NetworkError.invalidServerResponse)
        }
    }
    
    func testLoadDataWithDecodingError() async {
        let testData = "{}".data(using: .utf8)!
        let testResponse = HTTPURLResponse(url: mockURLProvider.apiBaseURL, statusCode: 200, httpVersion: nil, headerFields: nil)!
        
        mockURLSession.data = testData
        mockURLSession.response = testResponse

        let result: Result<TestDecobleResult, NetworkError> = await networkManager.loadData(endpoint: .productList("test"))
        
        switch result {
        case .success(_):
            XCTFail("Unexpected value. The expected case was decodingError")
        case .failure(let error):
            XCTAssertEqual(error, NetworkError.decodingError)
        }
    }

}
