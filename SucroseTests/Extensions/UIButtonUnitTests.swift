//
//  UIButtonUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

class UIButtonUnitTests: XCTestCase {}

// MARK: - Init
extension UIButtonUnitTests {
    
    func testInitWithImage() {
        // Arrange & Act
        let button = UIButton(image: UIImage())
        
        // Assert
        XCTAssertNotNil(button.imageView?.image)
    }
    
    func testInitWithNil() {
        // Arrange & Act
        let button = UIButton(image: nil)
        
        // Assert
        XCTAssertNil(button.imageView?.image)
    }
}
