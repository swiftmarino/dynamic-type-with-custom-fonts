//
//  UIFont+Optional.swift
//  DynamicTypeDemo
//
//  Created by Felipe Marino on 07/04/19.
//  Copyright © 2019 Felipe Marino. All rights reserved.
//

import UIKit

extension Optional where Wrapped == UIFont {
    
    var unwrapped: Wrapped {
        switch self {
        case .some(let font): return font
        case .none:
            preconditionFailure("""
                Could not load font from available fonts:
                \(UIFont.familyNames.joined(separator: ", "))
                """)
        }
    }
}
