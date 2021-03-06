//
//  SevenSegmentDisplayTests.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 19/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import XCTest
@testable import MicrocontrollerKit

class SevenSegmentDisplayTests: XCTestCase {

	func testBits() {

		let nibble = Nibble(b0: .zero, b1: .one, b2: .zero, b3: .zero)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		XCTAssertEqual(sevenSegmentDisplay.a, .one)
		XCTAssertEqual(sevenSegmentDisplay.b, .one)
		XCTAssertEqual(sevenSegmentDisplay.c, .zero)
		XCTAssertEqual(sevenSegmentDisplay.d, .one)
		XCTAssertEqual(sevenSegmentDisplay.e, .one)
		XCTAssertEqual(sevenSegmentDisplay.f, .zero)
		XCTAssertEqual(sevenSegmentDisplay.g, .one)

	}

	func testDescriptionOne() {

		let nibble = Nibble(b0: .one, b1: .zero, b2: .zero, b3: .zero)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		let description = sevenSegmentDisplay.description

		let expectedDescription = "⚫️⚫️⚫️⚫️⚫️⚫️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚫️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚫️\n"

		XCTAssertEqual(description, expectedDescription)

	}

	func testDescriptionTwo() {

		let nibble = Nibble(b0: .zero, b1: .one, b2: .zero, b3: .zero)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		let description = sevenSegmentDisplay.description

		let expectedDescription = "⚫️⚪️⚪️⚪️⚪️⚫️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚪️⚪️⚪️⚪️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚫️⚪️⚪️⚪️⚪️⚫️\n"

		XCTAssertEqual(description, expectedDescription)

	}

	func testDescriptionFour() {

		let nibble = Nibble(b0: .zero, b1: .zero, b2: .one, b3: .zero)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		let description = sevenSegmentDisplay.description

		let expectedDescription = "⚫️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚫️⚪️⚪️⚪️⚪️⚫️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚪️\n⚫️⚫️⚫️⚫️⚫️⚫️\n"

		XCTAssertEqual(description, expectedDescription)

	}

	func testDescriptionSix() {

		let nibble = Nibble(b0: .zero, b1: .one, b2: .one, b3: .zero)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		let description = sevenSegmentDisplay.description

		let expectedDescription = "⚫️⚪️⚪️⚪️⚪️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚪️⚫️⚫️⚫️⚫️⚫️\n⚫️⚪️⚪️⚪️⚪️⚫️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚫️⚪️⚪️⚪️⚪️⚫️\n"

		XCTAssertEqual(description, expectedDescription)

	}

	func testDescriptionEight() {

		let nibble = Nibble(b0: .zero, b1: .zero, b2: .zero, b3: .one)

		let sevenSegmentDisplay = SevenSegmentDisplay(nibble: nibble)

		let description = sevenSegmentDisplay.description

		let expectedDescription = "⚫️⚪️⚪️⚪️⚪️⚫️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚫️⚪️⚪️⚪️⚪️⚫️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚪️⚫️⚫️⚫️⚫️⚪️\n⚫️⚪️⚪️⚪️⚪️⚫️\n"

		XCTAssertEqual(description, expectedDescription)

	}

}
