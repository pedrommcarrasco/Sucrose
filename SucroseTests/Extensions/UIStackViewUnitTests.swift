//
//  UIStackViewUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

final class UIStackViewUnitTests: XCTestCase {
    
    private var stackView: UIStackView!
    
    override func setUp() {
        super.setUp()
        stackView = UIStackView()
    }
    
    override func tearDown() {
        stackView = nil
        super.tearDown()
    }
}

// MARK: - Hierarchy
extension UIStackViewUnitTests {
    
    func testOneViewVariadic() {
        // Act
        stackView.addArrangedSubviews(UIView())
        
        // Assert
        XCTAssertEqual(stackView.arrangedSubviews.count, 1)
    }
    
    func testOneViewArray() {
        // Act
        stackView.addArrangedSubviews([UIView()])
        
        // Assert
        XCTAssertEqual(stackView.arrangedSubviews.count, 1)
    }
    
    func testMultipleViewsVariadic() {
        // Act
        stackView.addArrangedSubviews(UIView(), UIView(), UIView())
        
        // Assert
        XCTAssertEqual(stackView.arrangedSubviews.count, 3)
    }
    
    func testMultipleViewsArray() {
        // Act
        stackView.addArrangedSubviews([UIView(), UIView(), UIView()])
        
        // Assert
        XCTAssertEqual(stackView.arrangedSubviews.count, 3)
    }
}
