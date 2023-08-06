//
//  ProductServiceTests.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import XCTest
@testable import alemarket

final class ProductServiceTests: XCTestCase {
    // MARK: - Object to test
    var mockNetworkManager: MockNetworkManager!
    var productService: ProductServiceProvider!
    
    override func setUp() {
        super.setUp()
        mockNetworkManager = MockNetworkManager()
        productService = ProductService(networkManager: mockNetworkManager)
    }

    override func tearDown() {
        mockNetworkManager = nil
        productService = nil
        super.tearDown()
    }

    // MARK: - Tests
    func testFindProductsByQueryWithResponse() async {
        let expected = SearchResultModel.default
        mockNetworkManager.data = expected
        mockNetworkManager.error = nil
        
        let result = await productService.findProductsByQuery(query: "query1")
        
        switch result {
        case .response(let data):
            XCTAssertEqual(data, expected)
        case .error(let error):
            XCTFail("Unexpected Error: \(error)")
        }
    }
    
    func testFindProductsByQueryWithInvalidURLErrorResponse() async {
        let expected = NetworkError.invalidURL.errorMessage
        mockNetworkManager.data = nil
        mockNetworkManager.error = NetworkError.invalidURL
        
        let result = await productService.findProductsByQuery(query: "query1")
        
        switch result {
        case .response(_):
            XCTFail("Unexpected value. The expected case was invalidURL")
        case .error(let error):
            XCTAssertEqual(error, expected)
        }
    }
    
    func testFindProductsByQueryWithDecodingErrorResponse() async {
        let expected = NetworkError.decodingError.errorMessage
        mockNetworkManager.data = nil
        mockNetworkManager.error = NetworkError.decodingError
        
        let result = await productService.findProductsByQuery(query: "query1")
        
        switch result {
        case .response(_):
            XCTFail("Unexpected value. The expected case was decodingError")
        case .error(let error):
            XCTAssertEqual(error, expected)
        }
    }
    
    func testFindProductsByQueryWithInvalidServerResponseErrorResponse() async {
        let expected = NetworkError.invalidServerResponse.errorMessage
        mockNetworkManager.data = nil
        mockNetworkManager.error = NetworkError.invalidServerResponse
        
        let result = await productService.findProductsByQuery(query: "query1")
        
        switch result {
        case .response(_):
            XCTFail("Unexpected value. The expected case was invalidServerResponse")
        case .error(let error):
            XCTAssertEqual(error, expected)
        }
    }
    
    func testFindProductsByQueryWithRequestErrorResponse() async {
        let expected = NetworkError.requestError.errorMessage
        mockNetworkManager.data = nil
        mockNetworkManager.error = NetworkError.requestError
        
        let result = await productService.findProductsByQuery(query: "query1")
        
        switch result {
        case .response(_):
            XCTFail("Unexpected value. The expected case was requestError")
        case .error(let error):
            XCTAssertEqual(error, expected)
        }
    }

}
