//
//  CollectionUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

class CollectionUnitTests: XCTestCase {}

// MARK: - Safe Index
extension CollectionUnitTests {
        
    func testValidSafeIndex() {
        // Arrange
        let array: [Int] = [1, 2]
        
        // Act
        let result = array[safe: 1]
        
        // Assert
        XCTAssertNotNil(result)
    }
    
    func testInvalidSafeIndex() {
        // Arrange
        let array: [Int] = []
        
        // Act
        let result = array[safe: 2]
        
        // Assert
        XCTAssertNil(result)
    }
}
