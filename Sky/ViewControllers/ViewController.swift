//
//  ViewController.swift
//  Sky
//
//  Created by 222 on 2018/3/17.
//  Copyright © 2018年 222. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	lazy var topView: ShowTheWeatherView = {
		let view = ShowTheWeatherView()
		view.backgroundColor = .brown
		return view
	}()
	override func loadView() {
		super.loadView()
		self.configureUI()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.basicSetting()
		self.networkSetting()
	}
	
	func basicSetting() {
		self.view.backgroundColor = .white
	}
	
	func configureUI() {
		self.view.addSubview(topView)
		topView.snp.makeConstraints { (make) in
			make.top.equalToSuperview().offset(SB_HEIGHT)
			make.right.left.equalToSuperview()
			make.height.equalToSuperview().multipliedBy(0.4)
		}
	}
	
	func networkSetting() {
		let date = Date()
		let formatter = DateFormatter()
		formatter.dateStyle = .full
		topView.dateLabel.text = formatter.string(from: date)
		topView.temperatureLabel.text = "33.5℃"
		topView.humidityLabel.text = "63%"
	}
}

