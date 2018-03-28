//
//  Dictionary+Extension.swift
//  Sky
//
//  Created by 222 on 2018/3/27.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

extension Dictionary {
	static func +<K, V>(left: inout [K: V], right: [K: V]) {
		for (k, v) in right {
			left.updateValue(v, forKey: k)
		}
	}
}
