//
//  ViewController.swift
//  Sky
//
//  Created by 222 on 2018/3/17.
//  Copyright © 2018年 222. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func loadView() {
		super.loadView()
		self.configureUI()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.basicSetting()
	}
	
	func basicSetting() {
		self.view.backgroundColor = .white
	}
	
	func configureUI() {
		let topView = ShowTheWeatherView()
		topView.backgroundColor = .brown
		self.view.addSubview(topView)
		topView.snp.makeConstraints { (make) in
			make.top.equalToSuperview().offset(SB_HEIGHT)
			make.right.left.equalToSuperview()
			make.height.equalToSuperview().multipliedBy(0.4)
		}
	}
}

