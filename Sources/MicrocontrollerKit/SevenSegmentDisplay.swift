//
//  SevenSegmentDisplay.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 14/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

/// A Seven-segment display (SSD), or seven-segment indicator, 
/// is a form of electronic display device for displaying decimal 
/// numerals that is an alternative to the more complex dot matrix displays.
///
/// *More info*: [Wikipedia](https://en.wikipedia.org/wiki/Seven-segment_display)
public struct SevenSegmentDisplay {

	public let a: Bit
	public let b: Bit
	public let c: Bit
	public let d: Bit
	public let e: Bit
	public let f: Bit
	public let g: Bit

	/// Sets bits to show the hexadecimal value from a `Nibble`.
	public init(nibble: Nibble) {

		let A = nibble.b3
		let B = nibble.b2
		let C = nibble.b1
		let D = nibble.b0

		// These formulas were determined using K-map simplification.

		a = A + C + (B & D) + (~B & ~D)
		b = ~B + (~C & ~D) + (C & D)
		c = B + ~C + D
		d = (~B & ~D) + (C & ~D) + (B & ~C & D) + (~B & C) + A
		e = (~B & ~D) + (C & ~D)
		f = A + (~C & ~D) + (B & ~C) + (B & ~D)
		g = A + (B & ~C) + (~B & C) + (C & ~D)
	}

}

extension SevenSegmentDisplay: CustomStringConvertible {

	public var description: String {
		var out = ""

		let onChar = "⚪️"
		let offChar = "⚫️"

		if a == .one {
			out += "\(offChar)\(onChar)\(onChar)\(onChar)\(onChar)\(offChar)\n"
		} else {
			out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"
		}

		for _ in 1...4 {

			if f == .one && b == .one {
				out += "\(onChar)\(offChar)\(offChar)\(offChar)\(offChar)\(onChar)\n"
			} else if f == .one {
				out += "\(onChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"

			} else if b == .one {
				out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(onChar)\n"

			} else {
				out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"
			}

		}

		if g == .one {
			out += "\(offChar)\(onChar)\(onChar)\(onChar)\(onChar)\(offChar)\n"
		} else {
			out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"
		}

		for _ in 1...4 {

			if e == .one && c == .one {
				out += "\(onChar)\(offChar)\(offChar)\(offChar)\(offChar)\(onChar)\n"
			} else if e == .one {
				out += "\(onChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"

			} else if c == .one {
				out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(onChar)\n"

			} else {
				out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"
			}

		}

		if d == .one {
			out += "\(offChar)\(onChar)\(onChar)\(onChar)\(onChar)\(offChar)\n"
		} else {
			out += "\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\(offChar)\n"
		}

		return out
	}

}
