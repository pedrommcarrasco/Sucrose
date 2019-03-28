//
//  UIViewController+Hierarchy.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    func addChilds(_ viewControllers: UIViewController ...) {
        viewControllers.forEach {
            self.addChild($0)
            view.addSubview($0.view)
            $0.didMove(toParent: self)
        }
    }
    
    func addChilds(_ viewControllers: [UIViewController]) {
        viewControllers.forEach {
            self.addChild($0)
            view.addSubview($0.view)
            $0.didMove(toParent: self)
        }
    }
    
    func remove() {
        willMove(toParent: nil)
        removeFromParent()
        view.removeFromSuperview()
    }
}
