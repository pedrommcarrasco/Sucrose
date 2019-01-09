//
//  OptionalUnitTests.swift
//  SucroseTests
//
//  Created by Pedro Carrasco on 09/01/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import XCTest
@testable import Sucrose

class OptionalUnitTests: XCTestCase {}

// MARK: - OptionalString
extension OptionalUnitTests {
    
    func testNilString() {
        // Arrange
        let string: String? = nil
        
        // Act
        let result = string.isNilOrEmpty
        
        // Assert
        XCTAssertTrue(result)
    }
    
    func testEmptyString() {
        // Arrange
        let string: String? = ""
        
        // Act
        let result = string.isNilOrEmpty
        
        // Assert
        XCTAssertTrue(result)
    }
    
    func testNonNilNonEmptyString() {
        // Arrange
        let string: String? = "pedrommcarrasco"
        
        // Act
        let result = string.isNilOrEmpty
        
        // Assert
        XCTAssertFalse(result)
    }
}
