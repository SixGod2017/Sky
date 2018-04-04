//
//  URLSession.swift
//  Sky
//
//  Created by 222 on 2018/3/30.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

extension URLSession: URLSessionProtocol {
	func dataTask(with request: URLRequest, completionHandler: @escaping URLSessionProtocol.dataTaskHandler) -> URLSessionDataTaskProtocol {
		return dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask as URLSessionDataTaskProtocol
	}
}
