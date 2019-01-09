//
//  UIViewControllerUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

final class UIViewControllerUnitTests: XCTestCase {
    
    private var viewController: UIViewController!
    
    override func setUp() {
        super.setUp()
        viewController = UIViewController()
    }
    
    override func tearDown() {
        viewController = nil
        super.tearDown()
    }
}

// MARK: - Hierarchy
extension UIViewControllerUnitTests {
    
    func testOneViewControllerVariadic() {
        // Act
        viewController.addChilds(UIViewController())
        
        // Assert
        XCTAssertEqual(viewController.children.count, 1)
    }
    
    func testOneViewControllerArray() {
        // Act
        viewController.addChilds([UIViewController()])
        
        // Assert
        XCTAssertEqual(viewController.children.count, 1)
    }
    
    func testMultipleViewControllersVariadic() {
        // Act
        viewController.addChilds(UIViewController(), UIViewController(), UIViewController())
        
        // Assert
        XCTAssertEqual(viewController.children.count, 3)
    }
    
    func testMultipleViewControllersArray() {
        // Act
        viewController.addChilds([UIViewController(), UIViewController(), UIViewController()])
        
        // Assert
        XCTAssertEqual(viewController.children.count, 3)
    }
    
    func testRemove() {
        // Arrange
        let child = UIViewController()
        
        // Act
        viewController.addChilds(child)
        child.remove()
        
        // Assert
        XCTAssertEqual(viewController.children.count, 0)
    }
}
