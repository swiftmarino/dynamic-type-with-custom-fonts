//
//  UILabel+Factory.swift
//  DynamicTypeDemo
//
//  Created by Felipe Marino on 07/04/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

extension UILabel {
    
    static var scaledTitle: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.font = UIFont.viewCodedLabelFont
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "View coded"
        return label
    }
}
