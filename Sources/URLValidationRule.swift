//
//  URLValidationRule.swift
//  ValidationComponents
//
//  Created by Alex Cristea on 26/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import Foundation
import ValidationToolkit

public struct URLValidationPredicate:  ValidationPredicate{

    public func evaluate(with input: String?) -> Bool {
        guard let input = input else { return false }
        return URL(string: input) != nil
    }
}
