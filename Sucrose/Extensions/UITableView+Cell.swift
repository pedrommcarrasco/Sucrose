//
//  UITableView+Cell.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 14/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

public extension UITableView {

    func register<T: UITableViewCell>(_ type: T.Type) {
        register(T.self, forCellReuseIdentifier: type.name)
    }
    
    func register<T: UITableViewHeaderFooterView>(_ type: T.Type) {
        register(T.self, forHeaderFooterViewReuseIdentifier: type.name)
    }

    func dequeue<T: UITableViewCell>(_ type: T.Type, in indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unable to dequeue \(type.name)")
        }

        return cell
    }
    
    func dequeue<T: UITableViewCell>(_ type: T.Type) -> T? {
        guard let cell = self.dequeueReusableCell(withIdentifier: type.name) as? T else {
            return nil
        }
        
        return cell
    }
    
    func dequeue<T: UITableViewHeaderFooterView>(_ type: T.Type) -> T? {
        guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: type.name) as? T else {
            return nil
        }
        
        return view
    }
}
