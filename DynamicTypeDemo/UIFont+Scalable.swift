//
//  UIFont+Scalable.swift
//  DynamicTypeDemo
//
//  Created by Felipe Marino on 07/04/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

protocol ScalableFont {
    func scaled(forTextStyle textStyle: UIFont.TextStyle?, maxSize: CGFloat?) -> UIFont
}

extension UIFont: ScalableFont {
    func scaled(forTextStyle textStyle: UIFont.TextStyle? = nil, maxSize: CGFloat? = nil) -> UIFont {
        let fontMetrics = textStyle != nil ? UIFontMetrics(forTextStyle: textStyle!) : UIFontMetrics.default
        if let maxSize = maxSize {
            return fontMetrics.scaledFont(for: self, maximumPointSize: maxSize)
        }
        return fontMetrics.scaledFont(for: self)
    }
}
