//
//  ApiEndpointsTests.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/1/23.
//

import XCTest
@testable import alemarket

final class ApiEndpointsTests: XCTestCase {
    // MARK: - Object to test
    var mockURLProvider: MockURLProvider!
    
    override func setUp() {
        super.setUp()
        mockURLProvider = MockURLProvider()
    }

    override func tearDown() {
        mockURLProvider = nil
        super.tearDown()
    }

    // MARK: - Tests
    func testProductListEndpointURL() {
        let query = "test"
        let siteId = "siteId123"
        let expectedURL = URL(string: "https://mock.api.mercadolibre.com/sites/\(siteId)/search?q=\(query)")
        let actualURL = ApiEndpoints.productList(siteId, query).url(relativeTo: mockURLProvider)
        
        XCTAssertEqual(actualURL, expectedURL)
    }
    
    func testProductDetailEndpointURL() {
        let itemId = "1234"
        let expectedURL = URL(string: "https://mock.api.mercadolibre.com/items/\(itemId)")
        let actualURL = ApiEndpoints.productDetail(itemId).url(relativeTo: mockURLProvider)
        
        XCTAssertEqual(actualURL, expectedURL)
    }
    
    func testProductDescriptionEndpointURL() {
        let itemId = "1234"
        let expectedURL = URL(string: "https://mock.api.mercadolibre.com/items/\(itemId)/description")
        let actualURL = ApiEndpoints.productDescription(itemId).url(relativeTo: mockURLProvider)
        
        XCTAssertEqual(actualURL, expectedURL)
    }

}
