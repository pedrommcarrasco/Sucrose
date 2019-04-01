//
//  Observable.swift
//  Sucrose
//
//  Created by Pedro Carrasco on 01/04/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import Foundation

public final class Observable<T> {
    public typealias Observer = (T) -> ()
    
    public var value: T {
        didSet { observer?(value) }
    }
    
    private var observer: Observer?
    
    public init(_ value: T) {
        self.value = value
    }
}

extension Observable {
    
    public func subscribe(_ observer: Observer?) {
        self.observer = observer
        observer?(value)
    }
}
