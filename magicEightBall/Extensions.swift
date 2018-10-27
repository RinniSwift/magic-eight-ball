//
//  Constants.swift
//  magicEightBall
//
//  Created by Rinni Swift on 10/27/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static let lightPink = UIColor(red:0.98, green:0.78, blue:0.83, alpha:1.0)
    static let lightPurple = UIColor(red:0.59, green:0.59, blue:0.94, alpha:1.0)
}

extension UIView {
    func gradientBG(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
