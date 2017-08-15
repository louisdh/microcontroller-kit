//
//  Adders.swift
//  MicrocontrollerKit
//
//  Created by Louis D'hauwe on 14/08/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation

public func halfAdder(a: Bit, b: Bit) -> (s: Bit, c: Bit) {
	
	let s = a ⊕ b
	let c = a & b
	
	return (s, c)
}

public func fullAdder(a: Bit, b: Bit, cIn: Bit) -> (s: Bit, cOut: Bit) {
	
	let (s1, c1) = halfAdder(a: a, b: b)
	let (s2, c2) = halfAdder(a: s1, b: cIn)
	
	let cOut = c1 + c2
	
	return (s2, cOut)
}
