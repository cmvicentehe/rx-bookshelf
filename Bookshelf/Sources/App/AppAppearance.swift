//
//  AppAppearance.swift
//  Bookshelf
//
//  Created by Mario on 27/4/18.
//  Copyright © 2018 Mario Negro. All rights reserved.
//

import UIKit

struct AppColors {
    static let background = UIColor.white
    static let foreground = UIColor.black
    static let userColor = UIColor(red:0.45, green:0.33, blue:0.69, alpha:1.00)
    static let opponentColor = UIColor(red:0.85, green:0.35, blue:0.57, alpha:1.00)
    static let tint = UIColor(red:0.70, green:0.07, blue:0.56, alpha:1.00)
}

class AppAppearance {
    static func apply(to window: UIWindow?) {
        guard let window = window else { return }
        applyWindowStyle(window)
        applyNavigationBarStyle()
    }
}

private extension AppAppearance {
    static func applyWindowStyle(_ window: UIWindow) {
        window.backgroundColor = AppColors.background
        window.tintColor = AppColors.tint
    }
    
    static func applyNavigationBarStyle() {
        let appearance = UINavigationBar.appearance()
        appearance.tintColor = AppColors.tint
        appearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor : AppColors.foreground]
    }
}
