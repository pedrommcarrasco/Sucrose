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
        didSet {
            guard let queue = queue else { return emit(value) }
            queue.async { [weak self] in
                guard let self = self else { return }
                self.emit(self.value)
            }
        }
    }
    
    private var observer: Observer?
    private var queue: DispatchQueue?
    
    public init(_ value: T) {
        self.value = value
    }
}

extension Observable {
    
    public func subscribe(on queue: DispatchQueue? = nil, _ observer: Observer?) {
        self.observer = observer
        self.queue = queue
        observer?(value)
    }
}

private extension Observable {

    func emit(_ value: T) {
        observer?(value)
    }
}
