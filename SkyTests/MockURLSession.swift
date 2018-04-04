//
//  MockURLSession.swift
//  SkyTests
//
//  Created by 222 on 2018/4/4.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
@testable import Sky

class MockURLSession: URLSessionProtocol {
	var sessiionDataTask = MockURLSessionDataTask()
	func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionProtocol.dataTaskHandler) -> URLSessionDataTaskProtocol {
		return sessiionDataTask
	}
}
