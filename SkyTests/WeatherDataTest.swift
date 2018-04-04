//
//  WeatherDataTest.swift
//  SkyTests
//
//  Created by 222 on 2018/4/4.
//  Copyright © 2018年 222. All rights reserved.
//

import XCTest
@testable import Sky

class WeatherDataTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	func test_weatherDataAt_starts_the_session () {
		let session = MockURLSession()
		let dataTask = MockURLSessionDataTask()
		session.sessiionDataTask = dataTask
		
		let manager = WeatherDataManager(baseURL: URL(string: "https://darksky.net")!, urlSession: session)
		manager.weatherDataAt(latitude: 52, longitude: 100, completion: {_, _ in})
		XCTAssert(session.sessiionDataTask.isResumeCalled)
	}
    
}
