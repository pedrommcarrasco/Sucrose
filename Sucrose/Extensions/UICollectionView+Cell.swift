//
//  UICollectionView+Register.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 14/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    enum SupplementaryViewKind {
        case header
        case footer
        
        var value: String {
            switch self {
            case .header: return UICollectionView.elementKindSectionHeader
            case .footer: return UICollectionView.elementKindSectionFooter
            }
        }
    }

    func register<T: UICollectionViewCell>(_ type: T.Type) {
        register(T.self, forCellWithReuseIdentifier: type.name)
    }
    
    func register<T: UICollectionReusableView>(_ type: T.Type, as kind: SupplementaryViewKind) {
        register(T.self, forSupplementaryViewOfKind: kind.value, withReuseIdentifier: type.name)
    }

    func dequeue<T: UICollectionViewCell>(_ type: T.Type, in indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unable to dequeue \(type.name)")
        }
    
        return cell
    }
    
    func dequeue<T: UICollectionReusableView>(_ type: T.Type, in indexPath: IndexPath, as kind: SupplementaryViewKind) -> T {

        guard let view = dequeueReusableSupplementaryView(ofKind: kind.value, withReuseIdentifier: type.name, for: indexPath) as? T else {
            fatalError("Unable to dequeue \(type.name)")
        }
        
        return view
    }
}
