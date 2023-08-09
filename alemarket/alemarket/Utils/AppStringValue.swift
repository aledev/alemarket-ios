//
//  AppStrings.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/6/23.
//

import Foundation

struct AppStringValue {
    
    // MARK: - Network
    static let invalidURL = NSLocalizedString("INVALID_URL", comment: "Message when there's an invalid URL")
    static let requestError = NSLocalizedString("REQUEST_ERROR", comment: "Message when there's a request error")
    static let invalidServerResponse = NSLocalizedString("INVALID_SERVER_RESPONSE", comment: "Message when there's an invalid server response")
    static let decodingError = NSLocalizedString("DECODING_ERROR", comment: "Message when there's a json decoding error")
    
    // MARK: - Views
    static let loadingText = NSLocalizedString("LOADING_TEXT", comment: "Text for the progressView")
    static let searchPlaceholder = NSLocalizedString("SEARCH_PLACEHOLDER", comment: "Text for the searchview placeholder")
    static let searchResultsForTitle = NSLocalizedString("SEARCH_REGION_SEARCH_TITLE", comment: "Text that appears below the search text input")
    static let emptyResultTitle = NSLocalizedString("EMPTY_RESULT_TITLE", comment: "Title text when there aren't results for a specific query")
    static let emptyResultBody = NSLocalizedString("EMPTY_RESULT_BODY", comment: "Body Text when there aren't results for a specific query")
    static let pagingResultsText = NSLocalizedString("PAGING_RESULTS_TEXT", comment: "Text that appears on the right side of the number of results found")
    static let productSoldQuantityText = NSLocalizedString("PRODUCT_SOLD_QUANTITY_TEXT", comment: "Text that appear on the right side of the sold quantity on the product detail view")
    static let percentageDiscountText = NSLocalizedString("PRODUCT_PERCENTAGE_DISCOUNT_TEXT", comment: "Text that appear on the right side of the discount over the product original price")
    static let productFreeShipping = NSLocalizedString("PRODUCT_FREE_SHIPPING", comment: "Free Shipping Text")
    static let productBestSellerCandidate = NSLocalizedString("PRODUCT_BEST_SELLER_CANDIDATE", comment: "Product Best Seller Text")
    static let productAttributesTitle = NSLocalizedString("PRODUCT_ATTRIBUTES_TITLE", comment: "Product Attributes Title Text")
    static let productDescriptionTitle = NSLocalizedString("PRODUCT_DESCRIPTION_TITLE", comment: "Product Description Title Text")
    static let productWithoutDescriptionText = NSLocalizedString("PRODUCT_WITHOUT_DESCRIPTION_TEXT", comment: "Product Description Text when the product hasn't a description")
    static let productSellerInfoTitle = NSLocalizedString("PRODUCT_SELLER_INFO_TITLE", comment: "Product Seller Info Title")
    static let productSeeOriginalPostButtonText = NSLocalizedString("PRODUCT_ORIGINAL_POST_BUTTON_TEXT", comment: "See Original Post Button Text")
}
