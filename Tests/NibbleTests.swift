//
//  NibbleTests.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 18/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import XCTest
@testable import MicrocontrollerKit

class NibbleTests: XCTestCase {

	func testDescription() {
		
		let nibble = Nibble(b0: .zero, b1: .zero, b2: .zero, b3: .zero)
		XCTAssertEqual(nibble.description, "0000")
		
	}
	
	func testDecimal() {
		
		let nibble = Nibble(b0: .zero, b1: .one, b2: .zero, b3: .one)
		XCTAssertEqual(nibble.decimalValue, 0b1010)
		
	}
	
	func testSum() {
		
		let nibble1 = Nibble(b0: .zero, b1: .one, b2: .zero, b3: .one)
		let nibble2 = Nibble(b0: .zero, b1: .zero, b2: .one, b3: .one)
		
		let expectNibble = Nibble(b0: .zero, b1: .one, b2: .one, b3: .zero)
		let expectedCarry = Bit.one
		
		let sum = nibble1 + nibble2
		XCTAssertEqual(sum.out, expectNibble)
		XCTAssertEqual(sum.c, expectedCarry)
		
	}
	
}
