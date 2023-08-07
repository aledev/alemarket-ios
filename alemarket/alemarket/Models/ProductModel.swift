//
//  Product.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/3/23.
//

import Foundation

struct ProductModel: Codable {
    let id: String
    let title: String
    let condition: String?
    let thumbnailId: String
    let catalogProductId: String?
    let listingTypeId: String
    let permalink: String
    let buyingMode: String
    let siteId: String
    let categoryId: String
    let domainId: String
    let variationId: String?
    let thumbnail: String
    let currencyId: String?
    let orderBackend: Int?
    let price: Double?
    let originalPrice: Double?
    let salePrice: Double?
    let soldQuantity: Int
    let availableQuantity: Int
    let officialStoreId: Int?
    let useThumbnailId: Bool?
    let acceptsMercadopago: Bool
    let tags: [String]
    let variationFilters: [String]?
    let shipping: ShippingModel
    let stopTime: String
    let seller: SellerModel?
    let sellerAddress: SellerAddressModel
    let address: AddressModel?
    let attributes: [AttributeModel]
    let variationsData: [String: VariationDataModel]?
    let installments: InstallmentsModel?
    let winnerItemId: String?
    let catalogListing: Bool
    let discounts: String?
    let promotions: [String]?
    let differentialPricing: DifferentialPricingModel?
    let inventoryId: String?
    let pictures: [PictureModel]?
    
    // MARK: - Computed Properties
    var thumbnailUrl: URL? {
        URL(string: thumbnail.convertUrlToHttps)
    }
    
    var formattedPrice: String {
        guard let price = price else {
            return ""
        }
        
        return AppUtils.formatCurrency(value: price, currencyCode: currencyId)
    }
    
    // MARK: - Coding Keys
    enum CodingKeys: String, CodingKey {
        case id, title, condition, permalink, thumbnail, price,
             tags, seller, address, attributes, shipping, installments,
             discounts, promotions, pictures
        case thumbnailId = "thumbnail_id"
        case catalogProductId = "catalog_product_id"
        case listingTypeId = "listing_type_id"
        case buyingMode = "buying_mode"
        case siteId = "site_id"
        case categoryId = "category_id"
        case domainId = "domain_id"
        case variationId = "variation_id"
        case currencyId = "currency_id"
        case orderBackend = "order_backend"
        case originalPrice = "original_price"
        case salePrice = "sale_price"
        case soldQuantity = "sold_quantity"
        case availableQuantity = "available_quantity"
        case officialStoreId = "official_store_id"
        case useThumbnailId = "use_thumbnail_id"
        case acceptsMercadopago = "accepts_mercadopago"
        case variationFilters = "variation_filters"
        case stopTime = "stop_time"
        case sellerAddress = "seller_address"
        case variationsData = "variations_data"
        case winnerItemId = "winner_item_id"
        case catalogListing = "catalog_listing"
        case differentialPricing = "differential_pricing"
        case inventoryId = "inventory_id"
    }
}

// MARK: - Equatable Implementation
extension ProductModel: Equatable {
    
    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.condition == rhs.condition &&
        lhs.thumbnailId == rhs.thumbnailId &&
        lhs.catalogProductId == rhs.catalogProductId &&
        lhs.listingTypeId == rhs.listingTypeId &&
        lhs.permalink == rhs.permalink &&
        lhs.buyingMode == rhs.buyingMode &&
        lhs.siteId == rhs.siteId &&
        lhs.categoryId == rhs.categoryId &&
        lhs.domainId == rhs.domainId &&
        lhs.variationId == rhs.variationId &&
        lhs.thumbnail == rhs.thumbnail &&
        lhs.currencyId == rhs.currencyId &&
        lhs.orderBackend == rhs.orderBackend &&
        lhs.price == rhs.price &&
        lhs.originalPrice == rhs.originalPrice &&
        lhs.salePrice == rhs.salePrice &&
        lhs.soldQuantity == rhs.soldQuantity &&
        lhs.availableQuantity == rhs.availableQuantity &&
        lhs.officialStoreId == rhs.officialStoreId &&
        lhs.useThumbnailId == rhs.useThumbnailId &&
        lhs.acceptsMercadopago == rhs.acceptsMercadopago &&
        lhs.tags == rhs.tags &&
        lhs.variationFilters == rhs.variationFilters &&
        lhs.shipping == rhs.shipping &&
        lhs.stopTime == rhs.stopTime &&
        lhs.seller == rhs.seller &&
        lhs.sellerAddress == rhs.sellerAddress &&
        lhs.address == rhs.address &&
        lhs.attributes == rhs.attributes &&
        lhs.variationsData == rhs.variationsData &&
        lhs.installments == rhs.installments &&
        lhs.winnerItemId == rhs.winnerItemId &&
        lhs.catalogListing == rhs.catalogListing &&
        lhs.discounts == rhs.discounts &&
        lhs.promotions == rhs.promotions &&
        lhs.differentialPricing == rhs.differentialPricing &&
        lhs.inventoryId == rhs.inventoryId
    }
    
}

// MARK: - Default Value
extension ProductModel {
    
    static var `default`: ProductModel {
        ProductModel(
            id: "MLA1306048322",
            title: "title123",
            condition: "condition123",
            thumbnailId: "thumbnailId123",
            catalogProductId: "catalogProductId123",
            listingTypeId: "listingTypeId123",
            permalink: "permalink123",
            buyingMode: "buyingMode123",
            siteId: "siteId123",
            categoryId: "categoryId123",
            domainId: "domainId123",
            variationId: "variationId123",
            thumbnail: "https://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
            currencyId: "currencyId123",
            orderBackend: 123,
            price: 123.0,
            originalPrice: 123.0,
            salePrice: 123.0,
            soldQuantity: 123,
            availableQuantity: 123,
            officialStoreId: 123,
            useThumbnailId: true,
            acceptsMercadopago: true,
            tags: ["tag1", "tag2"],
            variationFilters: ["filter1", "filter2"],
            shipping: ShippingModel.default,
            stopTime: "stopTime123",
            seller: SellerModel.default,
            sellerAddress: SellerAddressModel.default,
            address: AddressModel.default,
            attributes: [AttributeModel.default],
            variationsData: ["variation1": VariationDataModel.default],
            installments: InstallmentsModel.default,
            winnerItemId: "winnerItemId123",
            catalogListing: true,
            discounts: "discounts123",
            promotions: ["promotion1", "promotion2"],
            differentialPricing: DifferentialPricingModel.default,
            inventoryId: "inventoryId123",
            pictures: nil
        )        
    }
    
    static var defaultWithPictures: ProductModel {
        ProductModel(
            id: "MLA1306048322",
            title: "title123",
            condition: "condition123",
            thumbnailId: "thumbnailId123",
            catalogProductId: "catalogProductId123",
            listingTypeId: "listingTypeId123",
            permalink: "permalink123",
            buyingMode: "buyingMode123",
            siteId: "siteId123",
            categoryId: "categoryId123",
            domainId: "domainId123",
            variationId: "variationId123",
            thumbnail: "https://http2.mlstatic.com/D_695065-MLA49737477253_042022-O.jpg",
            currencyId: "currencyId123",
            orderBackend: 123,
            price: 123.0,
            originalPrice: 123.0,
            salePrice: 123.0,
            soldQuantity: 123,
            availableQuantity: 123,
            officialStoreId: 123,
            useThumbnailId: true,
            acceptsMercadopago: true,
            tags: ["tag1", "tag2"],
            variationFilters: ["filter1", "filter2"],
            shipping: ShippingModel.default,
            stopTime: "stopTime123",
            seller: SellerModel.default,
            sellerAddress: SellerAddressModel.default,
            address: AddressModel.default,
            attributes: [AttributeModel.default],
            variationsData: ["variation1": VariationDataModel.default],
            installments: InstallmentsModel.default,
            winnerItemId: "winnerItemId123",
            catalogListing: true,
            discounts: "discounts123",
            promotions: ["promotion1", "promotion2"],
            differentialPricing: DifferentialPricingModel.default,
            inventoryId: "inventoryId123",
            pictures: PictureModel.defaultArray
        )
    }
    
}
