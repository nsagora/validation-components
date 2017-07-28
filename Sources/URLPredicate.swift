//
//  URLPredicate.swift
//  ValidationComponents
//
//  Created by Alex Cristea on 26/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import Foundation
import ValidationToolkit

public struct URLPredicate:  Predicate {

    public init() { }
    
    public func evaluate(with input: String) -> Bool {
        return URL(string: input) != nil
    }
}
