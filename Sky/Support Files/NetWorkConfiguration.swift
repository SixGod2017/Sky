//
//  NetWorkConfiguration.swift
//  Sky
//
//  Created by 222 on 2018/3/27.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

class GDMNetWork: NSObject {
	private let baseURL = "https://api.darksky.net/forecast/"
	var baseParam: [String: Any] = ["token": 123]
	static let share = GDMNetWork()
	private override init() {}
	
	func getCompleteUrl(url: String) -> String {
		let newUrl = baseURL.appending(darkSkySecretKey).appending("/"+url)
		return newUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
	}
	
	func combineParams(params: Dictionary<String, Any>) -> Dictionary<String, Any> {
		let new = baseParam.merging(params, uniquingKeysWith: { (current, _) -> Any in current })
		return new
	}
	
}
