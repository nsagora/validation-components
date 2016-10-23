//
//  URLValidationPredicateTests.swift
//  ValidationComponents
//
//  Created by Alex Cristea on 26/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import XCTest
@testable import ValidationComponents

class URLValidationPredicateTests: XCTestCase {


    var predicate: URLValidationPredicate!

    override func setUp() {
        super.setUp()
        predicate = URLValidationPredicate()
    }
    
    override func tearDown() {
        predicate = nil
        super.tearDown()
    }

    func testThatItEvaluateNilInputToFalse() {

        let result = predicate.evaluate(with: nil)
        XCTAssertFalse(result)
    }

    func testThatItEvaluatesValuidURLToTrue() {
        let result = predicate.evaluate(with: "http://www.url.com")
        XCTAssertTrue(result)
    }

    func testThatItEvaluatesInvaluidURLToFalse() {
        let result = predicate.evaluate(with: "http:\\www.url.com")
        XCTAssertFalse(result)
    }

}
