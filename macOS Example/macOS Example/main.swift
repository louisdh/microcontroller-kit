//
//  main.swift
//  macOS Example
//
//  Created by Louis D'hauwe on 15/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation
import MicrocontrollerKit

let nibble1 = Nibble(b0: .one, b1: .zero, b2: .one, b3: .zero)
let nibble2 = Nibble(b0: .one, b1: .one, b2: .zero, b3: .zero)

print("\(nibble1.description) (\(nibble1.decimalValue))")
print("+")
print("\(nibble2.description) (\(nibble2.decimalValue))")

let (sum, carry) = nibble1 + nibble2

print("=")
print("\(sum.description) (\(sum.decimalValue))\n")

let sevenSegment = SevenSegmentDisplay(nibble: sum)
print(sevenSegment.description)
