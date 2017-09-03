//
//  Tests.swift
//  Tests
//
//  Created by Louis D'hauwe on 18/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import XCTest
@testable import MicrocontrollerKit

class BitTests: XCTestCase {

	func testXORTruthTable() {

		XCTAssertEqual(.zero ⊕ .zero, .zero)
		XCTAssertEqual(.zero ⊕ .one, .one)
		XCTAssertEqual(.one ⊕ .zero, .one)
		XCTAssertEqual(.one ⊕ .one, .zero)

	}

	func testANDTruthTable() {

		XCTAssertEqual(.zero & .zero, .zero)
		XCTAssertEqual(.zero & .one, .zero)
		XCTAssertEqual(.one & .zero, .zero)
		XCTAssertEqual(.one & .one, .one)

	}

	func testORTruthTable() {

		XCTAssertEqual(.zero + .zero, .zero)
		XCTAssertEqual(.zero + .one, .one)
		XCTAssertEqual(.one + .zero, .one)
		XCTAssertEqual(.one + .one, .one)

	}

	func testNOTTruthTable() {

		XCTAssertEqual(~.zero, .one)
		XCTAssertEqual(~.one, .zero)

	}

	func testDescription() {

		XCTAssertEqual(Bit.zero.description, "0")
		XCTAssertEqual(Bit.one.description, "1")

	}
	
	func testComparison() {
		
		XCTAssert(.zero < .one)
		
	}

}
