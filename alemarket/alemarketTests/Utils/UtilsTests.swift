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
    
    // MARK: - CurrentSiteId Tests
    func testCurrentSiteIdForArgentina() throws {
        let region = "AR"
        let expected = AppUtils.siteIdArgentina
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForBolivia() throws {
        let region = "BO"
        let expected = AppUtils.siteIdBolivia
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
    
    func testCurrentSiteIdForColombia() throws {
        let region = "CO"
        let expected = AppUtils.siteIdColombia
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForEcuador() throws {
        let region = "EC"
        let expected = AppUtils.siteIdEcuador
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForParaguay() throws {
        let region = "PY"
        let expected = AppUtils.siteIdParaguay
        let actual = AppUtils.currentSiteIdFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCurrentSiteIdForPeru() throws {
        let region = "PE"
        let expected = AppUtils.siteIdPeru
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
    
    // MARK: - CountryNameFor Tests
    func testCountryNameForArgentina() throws {
        let region = "AR"
        let expected = AppUtils.countryNameForArgentina
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForBolivia() throws {
        let region = "BO"
        let expected = AppUtils.countryNameForBolivia
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForBrasil() throws {
        let region = "BR"
        let expected = AppUtils.countryNameForBrasil
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForChile() throws {
        let region = "CL"
        let expected = AppUtils.countryNameForChile
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForColombia() throws {
        let region = "CO"
        let expected = AppUtils.countryNameForColombia
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForEcuador() throws {
        let region = "EC"
        let expected = AppUtils.countryNameForEcuador
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForParaguay() throws {
        let region = "PY"
        let expected = AppUtils.countryNameForParaguay
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForPeru() throws {
        let region = "PE"
        let expected = AppUtils.countryNameForPeru
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
    
    func testCountryNameForUruguay() throws {
        let region = "UY"
        let expected = AppUtils.countryNameForUruguay
        let actual = AppUtils.countryNameFor(region: region)
        
        XCTAssertEqual(actual, expected)
    }
}
