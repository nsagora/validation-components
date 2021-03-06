//
//  PairMatchingPredicate.swift
//  ValidationComponents
//
//  Created by Alex Cristea on 23/08/16.
//  Copyright © 2016 iOS NSAgora. All rights reserved.
//

import Foundation
import ValidationToolkit

public struct PairMatchingPredicate<T:Equatable>: Predicate {

    public typealias InputType = (T?, T?)

    public init() { }
    
    public func evaluate(with input: InputType) -> Bool {
        return input.0 == input.1
    }
}
