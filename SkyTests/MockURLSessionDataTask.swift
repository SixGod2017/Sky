//
//  MockURLSessionDataTask.swift
//  SkyTests
//
//  Created by 222 on 2018/4/4.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
@testable import Sky

class MockURLSessionDataTask: URLSessionDataTaskProtocol {
	private (set) var isResumeCalled = false
	
	func resume() {
		self.isResumeCalled = true
	}
}
