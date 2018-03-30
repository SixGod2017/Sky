//
//  WeatherDataManager.swift
//  Sky
//
//  Created by 222 on 2018/3/30.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
import Alamofire

final class WeatherDataManager {
	internal let baseURL: URL
	internal let urlSession: URLSessionProtocol
	internal init(baseURL: URL, urlSession: URLSessionProtocol) {
		self.baseURL = baseURL
		self.urlSession = urlSession
	}
	static let shared = WeatherDataManager(baseURL: API.authenticatedUrl, urlSession: URLSession.shared)
	typealias CompletionHandler = (WeatherDataModel?, DataManagerError?) -> Void
	
	enum DataManagerError: Error {
		case failedRequest
		case invalidResponse
		case unKnown
	}
	
	func weatherDataAt(latitude: Double, longitude: Double, completion: @escaping CompletionHandler) {
		let url = baseURL.appendingPathComponent("\(latitude), \(longitude)")
		var request = URLRequest(url: url)
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		request.httpMethod = "GET"

		self.urlSession.dataTask(with: request) { (data, response, error) in
			DispatchQueue.main.async {
				self.didFinishGettingWeatherData(data: data, response: response, error: error, completion: completion)
			}
		}.resume()
		/*Alamofire.request(url).responseJSON { (response) in
			self.didFinishGettingWeatherData(data: response.data, response: response.response, error: response.error, completion: completion)
		}*/
	}
	
	func didFinishGettingWeatherData(data: Data?, response: URLResponse?, error: Error?, completion: CompletionHandler) -> Void {
		if let _ = error {
			completion(nil, .failedRequest)
		}
		else if let data = data, let response = response as? HTTPURLResponse {
			if response.statusCode == 200 {
				do {
					let weatherData = try JSONDecoder().decode(WeatherDataModel.self, from: data)
					completion(weatherData, nil)
				}
				catch {
					completion(nil, .invalidResponse)
				}
			}
			else {
				completion(nil, .unKnown)
			}
			  
		}
	}
}
