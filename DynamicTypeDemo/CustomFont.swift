//
//  CustomFont.swift
//  DynamicTypeDemo
//
//  Created by Felipe Marino on 07/04/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

protocol CustomFont {
    func sized(_ size: CGFloat) -> UIFont
}

extension CustomFont where Self: RawRepresentable, Self.RawValue == String {
    
    func sized(_ size: CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size: size).unwrapped
    }
}

extension UIFont {
    enum nunitoSans: String, CustomFont {
        case
        regular = "NunitoSans-Regular",
        semibold = "NunitoSans-SemiBold",
        bold = "NunitoSans-Bold"
    }
}

extension UIFont {
    static var viewCodedLabelFont = UIFont.nunitoSans
                                        .semibold.sized(20.0)
                                        .scaled(forTextStyle: .title1, maxSize: 50.0)
    
    static var outletLabelFont = UIFont.nunitoSans.regular.sized(30.0).scaled()
}
