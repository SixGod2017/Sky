//
//  NetWorkConfiguration.swift
//  Sky
//
//  Created by 222 on 2018/3/27.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
import Alamofire

//MARK:请求的格式
enum MethodType {
	case get
	case post
}

//MARK:网络请求类
class GDMNetWork: NSObject {
	//MARK:单例
	static let share = GDMNetWork()
	//MARK:基本URL
	private let baseURL = URL(string: "https://api.darksky.net/forecast")!
	private let darkSkySecretKey = "50a2b28f1871f27381f79468c0540bfb"
	//MARK:基本参数
	var baseParam: [String: Any] = ["latitude": 37.8267, "longitude": -122.4233]
	//MARK:重写初始化方法，防止外部通过初始化调用方法和属性
	private override init() {}
	
	//MARK:拼接URL
	private func getCompleteUrl(url: String) -> URL {
		let newUrl = baseURL.appendingPathComponent(darkSkySecretKey)//baseURL.appending(darkSkySecretKey).appending("/"+url)
		return newUrl//.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
	}
	
	//MARK:拼接Param
	private func combineParams(params: Dictionary<String, Any>) -> Dictionary<String, Any> {
		let new = baseParam.merging(params, uniquingKeysWith: { (current, _) -> Any in current })
		return new
	}
	
	//MARK:获取请求参数
	private func getHTTPMethod(method: MethodType) -> HTTPMethod {
		if method == .post {
			return .post
		} else {
			return .get
		}
	}
	
	//MARK:数据请求
	func requestWith(url: String, method:MethodType, params:Dictionary<String, Any>, success:@escaping ((AnyObject) -> Void), failure:@escaping ((Error) -> Void)) -> Void {
		let fullURL = self.getCompleteUrl(url: url)
		let httpMethod = self.getHTTPMethod(method: method)
		let fullParams = self.combineParams(params: params)
		
		Alamofire.request(fullURL, method: httpMethod, parameters: fullParams, encoding: JSONEncoding.default).responseJSON { (response) in
			switch response.result {
			case .success(let value):
				success(value as AnyObject)
			case .failure(let error):
				failure(error)
			}
		}
	}
}
