//
//  WeatherDataModel.swift
//  Sky
//
//  Created by 222 on 2018/3/30.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation

struct WeatherDataModel: Codable {
	let latitude: Double
	let longitude: Double
	let currently: CurrentWeather
	
	struct CurrentWeather: Codable {
		let time: Date
		let summary: String
		let icon: String
		let temperature: Double
		let humidity: Double
	}
}
