//
//  API.swift
//  Sky
//
//  Created by 222 on 2018/3/30.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

struct API {
	static let key = "50a2b28f1871f27381f79468c0540bfb"
	static let baseUrl = URL(string: "https://api.darksky.net/forecast")!
	static let authenticatedUrl = baseUrl.appendingPathComponent(key)
}
