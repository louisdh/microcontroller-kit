//
//  Bit.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 14/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

public enum Bit: Int {

	/// False (0).
	case zero = 0

	/// True (1).
	case one = 1
}

extension Bit: Equatable {

	public static func ==(lhs: Bit, rhs: Bit) -> Bool {
		return lhs.rawValue == rhs.rawValue
	}

}

extension Bit: Comparable {

	public static func <(lhs: Bit, rhs: Bit) -> Bool {
		return lhs.rawValue < rhs.rawValue
	}
	
}

extension Bit: CustomStringConvertible {

	public var description: String {

		switch self {
		case .zero:
			return "0"
		case .one:
			return "1"
		}

	}

}

infix operator ⊕ : ComparisonPrecedence
//prefix operator ~

public extension Bit {

	/// The AND operator (&) is a logical operation that outputs true 
	/// only when both inputs are true, returns false otherwise.
	///
	/// ````
	/// | a | b | output |
	/// |---|---|--------|
	/// | 0 | 0 | 0      |
	/// | 0 | 1 | 0      |
	/// | 1 | 0 | 0      |
	/// | 1 | 1 | 1      |
	/// ````
	static func & (a: Bit, b: Bit) -> Bit {

		switch (a, b) {
		case (.zero, .zero):
			return .zero

		case (.zero, .one):
			return .zero

		case (.one, .zero):
			return .zero

		case (.one, .one):
			return .one
		}

	}

	/// The OR operator (+) is a logical operation that outputs true
	/// when at least one input is true, returns false otherwise.
	///
	/// ````
	/// | a | b | output |
	/// |---|---|--------|
	/// | 0 | 0 | 0      |
	/// | 0 | 1 | 1      |
	/// | 1 | 0 | 1      |
	/// | 1 | 1 | 1      |
	/// ````
	static func + (a: Bit, b: Bit) -> Bit {

		switch (a, b) {
		case (.zero, .zero):
			return .zero

		case (.zero, .one):
			return .one

		case (.one, .zero):
			return .one

		case (.one, .one):
			return .one
		}

	}

	/// Exclusive or (XOR) is a logical operation that outputs true only 
	/// when inputs differ (one is true, the other is false).
	///
	/// ````
	/// | a | b | output |
	/// |---|---|--------|
	/// | 0 | 0 | 0      |
	/// | 0 | 1 | 1      |
	/// | 1 | 0 | 1      |
	/// | 1 | 1 | 0      |
	/// ````
	static func ⊕ (a: Bit, b: Bit) -> Bit {

		switch (a, b) {
		case (.zero, .zero):
			return .zero

		case (.zero, .one):
			return .one

		case (.one, .zero):
			return .one

		case (.one, .one):
			return .zero
		}

	}

	/// The NOT operator (~) is a logical operation that outputs the opposite
	/// value of the input.
	/// ````
	/// | a | output |
	/// |---|--------|
	/// | 0 | 1      |
	/// | 1 | 0      |
	/// ````
	static prefix func ~ (a: Bit) -> Bit {

		switch a {
		case .zero:
			return .one

		case .one:
			return .zero
		}

	}

}
