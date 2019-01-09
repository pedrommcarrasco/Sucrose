//
//  UIViewUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

final class UIViewUnitTests: XCTestCase {
    
    private var view: UIView!
    
    override func setUp() {
        super.setUp()
        view = UIView()
    }
    
    override func tearDown() {
        view = nil
        super.tearDown()
    }
}

// MARK: - Hierarchy
extension UIViewUnitTests {
    
    func testOneViewVariadic() {
        // Act
        view.addSubviews(UIView())
        
        // Assert
        XCTAssertEqual(view.subviews.count, 1)
    }
    
    func testOneViewArray() {
        // Act
        view.addSubviews([UIView()])
        
        // Assert
        XCTAssertEqual(view.subviews.count, 1)
    }
    
    func testMultipleViewsVariadic() {
        // Act
        view.addSubviews(UIView(), UIView(), UIView())
        
        // Assert
        XCTAssertEqual(view.subviews.count, 3)
    }
    
    func testMultipleViewsArray() {
        // Act
        view.addSubviews([UIView(), UIView(), UIView()])
        
        // Assert
        XCTAssertEqual(view.subviews.count, 3)
    }
}

// MARK: - Optimize
extension UIViewUnitTests {
    
    func testOptimize() {        
        // Act
        view.optimize()
        
        // Assert
        XCTAssertTrue(view.isOpaque)
        XCTAssertTrue(view.clipsToBounds)
    }
}
