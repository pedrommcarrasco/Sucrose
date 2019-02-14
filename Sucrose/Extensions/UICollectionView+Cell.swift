//
//  UICollectionView+Register.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 14/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

extension UICollectionView {

    func register<T: UICollectionViewCell>(_: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.name)
    }

    func dequeueCell<T: UICollectionViewCell>(for indexPath: IndexPath, as type: T.Type) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unknown Cell at \(indexPath)")
        }

        return cell
    }
}