//
//  HapticsFeedbackHelper.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/8/23.
//

import Foundation
import UIKit

class HapticsFeedbackHelper {
    // MARK: - Properties
    static let shared = HapticsFeedbackHelper()
    private var haptics: UINotificationFeedbackGenerator? = nil
    
    // MARK: - Initializer
    private init() {
        self.haptics = UINotificationFeedbackGenerator()
    }
    
    // MARK: - Functions
    func notify() {
        self.haptics?.notificationOccurred(.success)
    }
}
