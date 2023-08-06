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
    
}
