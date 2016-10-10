//
//  ValueMathcingValidationPredicate.swift
//  ValidationComponents
//
//  Created by Alex Cristea on 23/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import XCTest
@testable import ValidationComponents


class ValueMatchingValidationPredicateTests: XCTestCase {

    var predicate: ValueMatchingValidationPredicate<String>!

    override func setUp() {
        super.setUp()
        predicate = ValueMatchingValidationPredicate()
    }
    
    override func tearDown() {
        predicate = nil
        super.tearDown()
    }

    func testThatItFailsForNil() {
        let result = predicate.evaluate(with: nil)
        XCTAssertFalse(result)
    }

    func testThatItPassesForNilIputs() {
        let result = predicate.evaluate(with: (nil, nil))
        XCTAssertTrue(result)
    }

    func testThatItPassesForMatchingInputs() {
        let result = predicate.evaluate(with: ("match", "match"))
        XCTAssertTrue(result)
    }

    func testThatItFailsForUnmatchingInputs() {
        let result = predicate.evaluate(with: ("match", "unmatch"))
        XCTAssertFalse(result)
    }
}
