//
//  Collection+SafeIndex.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import Foundation

public extension Collection {
    
    subscript(safe index: Index) -> Element? {
        return index < endIndex && index >= startIndex ? self[index] : nil
    }
}
