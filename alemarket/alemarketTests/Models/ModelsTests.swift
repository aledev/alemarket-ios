//
//  ModelsTests.swift
//  alemarketTests
//
//  Created by Alejandro Aliaga on 8/5/23.
//

import Foundation

import XCTest
@testable import alemarket

final class ModelsTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - AddressModel Test
    func testAddressModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.addressModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert AddressModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(AddressModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.stateId, "AR-X")
            XCTAssertEqual(value.stateName, "Córdoba")
            XCTAssertEqual(value.cityId, "TUxBQ0NBUGNiZGQx")
            XCTAssertEqual(value.cityName, "Córdoba")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - AttributeModel Test
    func testAttributeModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.attributeModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert AttributeModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(AttributeModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, "BRAND")
            XCTAssertEqual(value.name, "Marca")
            XCTAssertEqual(value.valueId, "2503")
            XCTAssertEqual(value.valueName, "Motorola")
            XCTAssertEqual(value.attributeGroupId, "OTHERS")
            XCTAssertEqual(value.attributeGroupName, "Otros")
            XCTAssertNil(value.valueStruct)
            XCTAssertEqual(value.source, 7092)
            XCTAssertEqual(value.valueType, "string")
            XCTAssertEqual(value.values.count, 1)
            XCTAssertEqual(value.values[0].id, "2503")
            XCTAssertEqual(value.values[0].name, "Motorola")
            XCTAssertNil(value.values[0].valueStruct)
            XCTAssertEqual(value.values[0].source, 7092)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    func testAttributeModelWithValueStructDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.attributeModelWithValueStructJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert AttributeModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(AttributeModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, "WEIGHT")
            XCTAssertEqual(value.name, "Peso")
            XCTAssertEqual(value.valueId, "6927990")
            XCTAssertEqual(value.valueName, "163 g")
            XCTAssertEqual(value.attributeGroupId, "OTHERS")
            XCTAssertEqual(value.attributeGroupName, "Otros")
            XCTAssertEqual(value.valueStruct?.number, 163)
            XCTAssertEqual(value.valueStruct?.unit, "g")
            XCTAssertEqual(value.source, 1)
            XCTAssertEqual(value.valueType, "number_unit")
            XCTAssertEqual(value.values.count, 1)
            XCTAssertEqual(value.values[0].id, "6927990")
            XCTAssertEqual(value.values[0].name, "163 g")
            XCTAssertEqual(value.values[0].valueStruct?.number, 163)
            XCTAssertEqual(value.values[0].valueStruct?.unit, "g")
            XCTAssertEqual(value.values[0].source, 1)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - BaseAddressModel Test
    func testBaseAddressModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.baseAddressModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert BaseAddressModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(BaseAddressModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, "AR")
            XCTAssertEqual(value.name, "Argentina")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - DifferentialPricingModel Test
    func testDifferentialPricingModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.differentialPricingModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert DifferentialPricingModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(DifferentialPricingModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, 33678187)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - DifferentialPricingModel Test
    func testEshopModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.eshopModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert EshopModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(EshopModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.eshopId, 0)
            XCTAssertEqual(value.seller, 0)
            XCTAssertEqual(value.nickName, "")
            XCTAssertEqual(value.eshopStatusId, 0)
            XCTAssertEqual(value.siteId, "")
            XCTAssertEqual(value.eshopExperience, 0)
            XCTAssertNil(value.eshopRubro)
            XCTAssertEqual(value.eshopLogoUrl, "")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - ExcludedModel Test
    func testExcludedModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.excludedModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert ExcludedModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(ExcludedModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.realValue, 1)
            XCTAssertEqual(value.realRate, 0.125)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - InstallmentsModel Test
    func testInstallmentsModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.installmentsModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert InstallmentsModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(InstallmentsModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.quantity, 12)
            XCTAssertEqual(value.amount, 7652.08)
            XCTAssertEqual(value.rate, 104.06)
            XCTAssertEqual(value.currencyId, "ARS")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - PeriodMetricsModel Test
    func testPeriodMetricsModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.periodMetricsModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert PeriodMetricsModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(PeriodMetricsModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.period, "365 days")
            XCTAssertEqual(value.rate, 0)
            XCTAssertEqual(value.value, 0)
            XCTAssertNil(value.excluded)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    func testPeriodMetricsModelWithExcludedDataDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.periodMetricsModelWithExcludedDataJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert PeriodMetricsModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(PeriodMetricsModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.period, "365 days")
            XCTAssertEqual(value.rate, 0)
            XCTAssertEqual(value.value, 0)
            XCTAssertEqual(value.excluded?.realValue, 1)
            XCTAssertEqual(value.excluded?.realRate, 0.125)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - RatingsModel Test
    func testRatingsModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.ratingsModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert RatingsModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(RatingsModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.negative, 0)
            XCTAssertEqual(value.neutral, 0)
            XCTAssertEqual(value.positive, 1)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - SalesModel Test
    func testSalesModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.salesModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert SalesModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(SalesModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.period, "365 days")
            XCTAssertEqual(value.completed, 2)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - SellerModel Test
    func testSellerModelWithEshopDataDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.sellerModelWithEshopJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert SellerModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(SellerModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, 553813201)
            XCTAssertEqual(value.nickname, "ARTA8929411")
            XCTAssertEqual(value.carDealer, false)
            XCTAssertEqual(value.realEstateAgency, false)
            XCTAssertEqual(value.registrationDate, "2020-04-23T13:20:36.000-04:00")
            XCTAssertEqual(value.tags, ["normal", "credits_profile", "messages_as_seller"])
            XCTAssertEqual(value.carDealerLogo, "")
            XCTAssertEqual(value.permalink, "http://perfil.mercadolibre.com.ar/ARTA8929411")

            // SellerReputationModel asserts
            XCTAssertNil(value.sellerReputation.levelId)
            XCTAssertNil(value.sellerReputation.powerSellerStatus)
            XCTAssertEqual(value.sellerReputation.transactions.canceled, 3)
            XCTAssertEqual(value.sellerReputation.transactions.completed, 0)
            XCTAssertEqual(value.sellerReputation.transactions.period, "historic")
            XCTAssertEqual(value.sellerReputation.transactions.ratings.negative, 1)
            XCTAssertEqual(value.sellerReputation.transactions.ratings.neutral, 0)
            XCTAssertEqual(value.sellerReputation.transactions.ratings.positive, 0)
            XCTAssertEqual(value.sellerReputation.transactions.total, 3)

            // SellerReputationModel metrics asserts
            XCTAssertEqual(value.sellerReputation.metrics.sales.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.sales.completed, 0)
            XCTAssertEqual(value.sellerReputation.metrics.claims.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.claims.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.claims.value, 1)
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.value, 0)
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.value, 2)

            // EshopModel asserts
            XCTAssertEqual(value.eshop?.eshopId, 0)
            XCTAssertEqual(value.eshop?.seller, 0)
            XCTAssertEqual(value.eshop?.nickName, "")
            XCTAssertEqual(value.eshop?.eshopStatusId, 0)
            XCTAssertEqual(value.eshop?.siteId, "")
            XCTAssertEqual(value.eshop?.eshopExperience, 0)
            XCTAssertNil(value.eshop?.eshopRubro)
            XCTAssertEqual(value.eshop?.eshopLogoUrl, "")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    func testSellerModelWithoutEshopDataDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.sellerModelWithoutEshopJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert SellerModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(SellerModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.id, 553813201)
            XCTAssertEqual(value.nickname, "ARTA8929411")
            XCTAssertEqual(value.carDealer, false)
            XCTAssertEqual(value.realEstateAgency, false)
            XCTAssertEqual(value.registrationDate, "2020-04-23T13:20:36.000-04:00")
            XCTAssertEqual(value.tags, ["normal", "credits_profile", "messages_as_seller"])
            XCTAssertEqual(value.carDealerLogo, "")
            XCTAssertEqual(value.permalink, "http://perfil.mercadolibre.com.ar/ARTA8929411")

            // SellerReputationModel asserts
            XCTAssertNil(value.sellerReputation.levelId)
            XCTAssertNil(value.sellerReputation.powerSellerStatus)
            XCTAssertEqual(value.sellerReputation.transactions.canceled, 3)
            XCTAssertEqual(value.sellerReputation.transactions.completed, 0)
            XCTAssertEqual(value.sellerReputation.transactions.period, "historic")
            XCTAssertEqual(value.sellerReputation.transactions.ratings.negative, 1)
            XCTAssertEqual(value.sellerReputation.transactions.ratings.neutral, 0)
            XCTAssertEqual(value.sellerReputation.transactions.ratings.positive, 0)
            XCTAssertEqual(value.sellerReputation.transactions.total, 3)

            // SellerReputationModel metrics asserts
            XCTAssertEqual(value.sellerReputation.metrics.sales.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.sales.completed, 0)
            XCTAssertEqual(value.sellerReputation.metrics.claims.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.claims.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.claims.value, 1)
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.delayedHandlingTime.value, 0)
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.period, "365 days")
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.rate, 0)
            XCTAssertEqual(value.sellerReputation.metrics.cancellations.value, 2)

            // EshopModel asserts
            XCTAssertNil(value.eshop)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - SellerAddressModel Test
    func testSellerAddressModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.sellerAddressModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert SellerAddressModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(SellerAddressModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.comment, "")
            XCTAssertEqual(value.addressLine, "")
            XCTAssertNil(value.id)
            XCTAssertNil(value.latitude)
            XCTAssertNil(value.longitude)
            XCTAssertEqual(value.country?.id, "AR")
            XCTAssertEqual(value.country?.name, "Argentina")
            XCTAssertEqual(value.state?.id, "AR-X")
            XCTAssertEqual(value.state?.name, "Córdoba")
            XCTAssertEqual(value.city?.id, "TUxBQ0NBUGNiZGQx")
            XCTAssertEqual(value.city?.name, "Córdoba")
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - SellerReputationModel Test
    func testSellerReputationModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.sellerReputationModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert SellerReputationModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(SellerReputationModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.levelId, "4_light_green")
            XCTAssertNil(value.powerSellerStatus)
            XCTAssertEqual(value.transactions.canceled, 3)
            XCTAssertEqual(value.transactions.completed, 5)
            XCTAssertEqual(value.transactions.period, "historic")
            XCTAssertEqual(value.transactions.ratings.negative, 0)
            XCTAssertEqual(value.transactions.ratings.neutral, 0)
            XCTAssertEqual(value.transactions.ratings.positive, 1)
            XCTAssertEqual(value.transactions.total, 8)
            XCTAssertEqual(value.metrics.sales.period, "365 days")
            XCTAssertEqual(value.metrics.sales.completed, 5)
            XCTAssertEqual(value.metrics.claims.period, "365 days")
            XCTAssertEqual(value.metrics.claims.rate, 0)
            XCTAssertEqual(value.metrics.claims.value, 0)
            XCTAssertEqual(value.metrics.claims.excluded?.realValue, 1)
            XCTAssertEqual(value.metrics.claims.excluded?.realRate, 0.125)
            XCTAssertEqual(value.metrics.delayedHandlingTime.period, "365 days")
            XCTAssertEqual(value.metrics.delayedHandlingTime.rate, 0)
            XCTAssertEqual(value.metrics.delayedHandlingTime.value, 0)
            XCTAssertEqual(value.metrics.delayedHandlingTime.excluded?.realValue, 0)
            XCTAssertEqual(value.metrics.delayedHandlingTime.excluded?.realRate, 0)
            XCTAssertEqual(value.metrics.cancellations.period, "365 days")
            XCTAssertEqual(value.metrics.cancellations.rate, 0)
            XCTAssertEqual(value.metrics.cancellations.value, 0)
            XCTAssertEqual(value.metrics.cancellations.excluded?.realValue, 0)
            XCTAssertEqual(value.metrics.cancellations.excluded?.realRate, 0)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - ShippingModel Test
    func testShippingModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.shippingModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert ShippingModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(ShippingModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.storePickUp, false)
            XCTAssertEqual(value.freeShipping, true)
            XCTAssertEqual(value.logisticType, "drop_off")
            XCTAssertEqual(value.mode, "me2")
            XCTAssertEqual(value.tags, [])
            XCTAssertNil(value.benefits)
            XCTAssertNil(value.promise)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
 
    // MARK: - VariationDataModel Test
    func testVariationDataModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.variationDataModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert VariationDataModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(VariationDataModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.thumbnail, "http://http2.mlstatic.com/D_638906-MLA70282123381_072023-O.jpg")
            XCTAssertEqual(value.ratio, "1.42")
            XCTAssertEqual(value.name, "Índigo oscuro")
            XCTAssertEqual(value.picturesQty, 5)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
    // MARK: - TransactionsModel Test
    func testTransactionsModelDecoding() throws {
        // Convert JSON string to Data
        guard let jsonData = MockJsonData.transactionsModelJsonData.data(using: .utf8) else {
            XCTFail("Failed to convert TransactionsModel JSON string to Data.")
            return
        }

        // Create JSON decoder
        let decoder = JSONDecoder()

        // Decode JSON
        do {
            let value = try decoder.decode(TransactionsModel.self, from: jsonData)
            
            // Asserts
            XCTAssertEqual(value.canceled, 0)
            XCTAssertEqual(value.completed, 2)
            XCTAssertEqual(value.period, "historic")
            XCTAssertEqual(value.ratings.negative, 0)
            XCTAssertEqual(value.ratings.neutral, 0)
            XCTAssertEqual(value.ratings.positive, 1)
            XCTAssertEqual(value.total, 2)
        } catch {
            XCTFail("Decoding failed: \(error)")
        }
    }
    
}
