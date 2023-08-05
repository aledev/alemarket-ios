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
    let condition: String
    let thumbnailId: String
    let catalogProductId: String
    let listingTypeId: String
    let permalink: String
    let buyingMode: String
    let siteId: String
    let categoryId: String
    let domainId: String
    let variationId: String
    let thumbnail: String
    let currencyId: String
    let orderBackend: Int?
    let price: Int?
    let originalPrice: Int?
    let salePrice: Int?
    let soldQuantity: Int
    let availableQuantity: Int
    let officialStoreId: Int?
    let useThumbnailId: Bool
    let acceptsMercadopago: Bool
    let tags: [String]
    let variationFilters: [String]
    let shipping: ShippingModel
    let stopTime: String
    let seller: SellerModel
    let sellerAddress: SellerAddressModel
    let address: AddressModel
    let attributes: [AttributeModel]
    let variationsData: [String: VariationDataModel]
    let installments: InstallmentsModel
    let winnerItemId: String?
    let catalogListing: Bool
    let discounts: String?
    let promotions: [String]
    let differentialPricing: DifferentialPricingModel?
    let inventoryId: String?

    enum CodingKeys: String, CodingKey {
        case id, title, condition, permalink, thumbnail, price, tags, seller,
             address, attributes, shipping, installments, discounts, promotions        
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
