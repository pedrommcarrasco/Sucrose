//
//  UITableView+Cell.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 14/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

public extension UITableView {

    func register<T: UITableViewCell>(_: T.Type) {
        register(T.self, forCellReuseIdentifier: T.name)
    }
    
    func register<T: UITableViewHeaderFooterView>(_: T.Type) {
        register(T.self, forHeaderFooterViewReuseIdentifier: T.name)
    }

    func dequeue<T: UITableViewCell>(for indexPath: IndexPath, as type: T.Type) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unknown Cell at \(indexPath)")
        }

        return cell
    }
    
    func dequeue<T: UITableViewHeaderFooterView>(as type: T.Type) -> T {
        guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: T.name) as? T else {
            fatalError("Couldn't dequeue Header/Footer named \(T.name)")
        }
        
        return view
    }
}
