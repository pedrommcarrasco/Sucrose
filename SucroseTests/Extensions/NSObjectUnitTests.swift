//
//  NSObjectUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

class NSObjectUnitTests: XCTestCase {}

// MARK: - Create
extension NSObjectUnitTests {
    
    func testCreate() {
        // Arrange & Act
        let view: UIView = .create {
            $0.backgroundColor = .red
        }
        
        // Assert
        XCTAssertEqual(view.backgroundColor, .red)
    }
}
