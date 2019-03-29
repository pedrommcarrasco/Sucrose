//
//  UICollectionView+Register.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 14/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

public extension UICollectionView {

    func register<T: UICollectionViewCell>(_: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.name)
    }

    func dequeue<T: UICollectionViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unknown Cell at \(indexPath)")
        }
    
        return cell
    }
}
