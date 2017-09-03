//
//  Nibble.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 14/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

/// 4 bits
public struct Nibble {

	public let b0: Bit
	public let b1: Bit
	public let b2: Bit
	public let b3: Bit

	public init(b0: Bit, b1: Bit, b2: Bit, b3: Bit) {
		self.b0 = b0
		self.b1 = b1
		self.b2 = b2
		self.b3 = b3
	}

}

extension Nibble: CustomStringConvertible {

	public var description: String {
		return "\(b3)\(b2)\(b1)\(b0)"
	}

}

extension Nibble: Equatable {

	public static func ==(lhs: Nibble, rhs: Nibble) -> Bool {
		return lhs.b0 == rhs.b0
			&& lhs.b1 == rhs.b1
			&& lhs.b2 == rhs.b2
			&& lhs.b3 == rhs.b3
	}

}

extension Nibble: Comparable {
	
	public static func <(lhs: Nibble, rhs: Nibble) -> Bool {
		return lhs.decimalValue < rhs.decimalValue
	}
	
}

public extension Nibble {

	var decimalValue: Int {
		return 1 * b0.rawValue + 2 * b1.rawValue + 4 * b2.rawValue + 8 * b3.rawValue
	}

}

public extension Nibble {

	static func + (lhs: Nibble, rhs: Nibble) -> (out: Nibble, c: Bit) {

		let (s0, c0) = halfAdder(a: lhs.b0, b: rhs.b0)
		let (s1, c1) = fullAdder(a: lhs.b1, b: rhs.b1, cIn: c0)
		let (s2, c2) = fullAdder(a: lhs.b2, b: rhs.b2, cIn: c1)
		let (s3, c3) = fullAdder(a: lhs.b3, b: rhs.b3, cIn: c2)

		let s = Nibble(b0: s0, b1: s1, b2: s2, b3: s3)

		return (s, c3)
	}

}
