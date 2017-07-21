//
//  EmailValidationPredicateTests.swift
//  Validator
//
//  Created by Alex Cristea on 07/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import XCTest
@testable import ValidationComponents

class EmailPredicateTests: XCTestCase {

    var rule: EmailPredicate!

    override func setUp() {
        super.setUp()
        rule = EmailPredicate()
    }
    
    override func tearDown() {
        rule = nil
        super.tearDown()
    }

    func testThatItFailsForInvalidEmail() {
        let email = "test@"
        let result = rule.evaluate(with: email)
        XCTAssertFalse(result)
    }

    func testThatItPassesForValidEmail() {
        let email = "test@example.com"
        let result = rule.evaluate(with: email)
        XCTAssertTrue(result)
    }

    func testThatItPassesForUTF8() {
        let email = "tést@example.com"
        let result = rule.evaluate(with: email)
        XCTAssertTrue(result)
    }
}
