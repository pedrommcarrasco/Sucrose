//
//  UIEdgeInsets+Init.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 07/04/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

extension UIEdgeInsets {
    
    init(_ inset: CGFloat) {
        self.init(top: inset, left: inset, bottom: inset, right: inset)
    }
    
    init(top: CGFloat) {
        self.init(top: top, left: 0, bottom: 0, right: 0)
    }
    
    init(bottom: CGFloat) {
        self.init(top: 0, left: 0, bottom: bottom, right: 0)
    }
    
    init(right: CGFloat) {
        self.init(top: 0, left: 0, bottom: 0, right: right)
    }
    
    init(left: CGFloat) {
        self.init(top: 0, left: left, bottom: 0, right: 0)
    }
    
    init(vertical: CGFloat) {
        self.initr
    }
    
    init(horizontal: CGFloat) {
        self.init(top: 0, left: horizontal, bottom: 0, right: horizontal)
    }
    
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
}
