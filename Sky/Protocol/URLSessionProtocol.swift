//
//  URLSessionProtocol.swift
//  Sky
//
//  Created by 222 on 2018/3/30.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
	typealias dataTaskHandler = (Data?, URLResponse?, Error?) -> Void
	
	func dataTask(with request: URLRequest, completionHandler: @escaping dataTaskHandler) -> URLSessionDataTaskProtocol
}
