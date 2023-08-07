//
//  UtilsTests.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/7/23.
//

import Foundation

import XCTest
@testable import alemarket

final class UtilsTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCurrentSiteIdForArgentina() throws {
        let region = "AR"
        let expected = AppUtils.siteIdArgentina
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForBrazil() throws {
        let region = "BR"
        let expected = AppUtils.siteIdBrazil
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForChile() throws {
        let region = "CL"
        let expected = AppUtils.siteIdChile
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForUruguay() throws {
        let region = "UY"
        let expected = AppUtils.siteIdUruguay
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForDefaultCase() throws {
        let region = "UY"
        let expected = AppUtils.siteIdUruguay
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
}
