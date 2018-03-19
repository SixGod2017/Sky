//
//  Configuration.swift
//  Sky
//
//  Created by 222 on 2018/3/17.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
import UIKit

let SC_WIDTH = UIScreen.main.bounds.size.width
let SC_HEIGHT = UIScreen.main.bounds.size.height

let SB_HEIGHT = UIApplication.shared.statusBarFrame.height

func equalScaling(size: Double) -> Double {
	let proportion = Double(SC_WIDTH) / 375
	return size * proportion
}

extension UIColor {
	class func hexadecimalColorConversion(hexadecimalValue: String) -> UIColor {
		var cstr = hexadecimalValue.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
		if cstr.count < 6 {
			return .clear
		}
		if cstr.hasPrefix("0x") {
			let startIndex = cstr.index(cstr.startIndex, offsetBy: 2)
			cstr = String(cstr[startIndex...])
		}
		if cstr.hasPrefix("#") {
			let startIndex = cstr.index(cstr.startIndex, offsetBy: 1)
			cstr = String(cstr[startIndex...])
		}
		if cstr.count != 6 {
			return .clear
		}
		
		
//		let rStr = cstr[0..<2]
		
		
//		let bStr = cstr.substring(with: range)
		var r:UInt32 = 0x0
		var g:UInt32 = 0x0
		var b: UInt32 = 0x0
//		Scanner.init(string: rStr)
		return .white
	}
}

