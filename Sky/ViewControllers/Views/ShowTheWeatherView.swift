//
//  ShowTheWeatherView.swift
//  Sky
//
//  Created by 222 on 2018/3/17.
//  Copyright © 2018年 222. All rights reserved.
//

import UIKit
import SnapKit

class ShowTheWeatherView: UIView {
	
	lazy var weatherImgView: UIImageView = {
		let imgView = UIImageView()
		imgView.contentMode = .scaleAspectFit
		return imgView
	}()

	lazy var locationBtn: UIButton = {
		let btn = UIButton()
		btn.setImage(#imageLiteral(resourceName: "LocationBtn"), for: .normal)
//		btn.adjustsImageWhenHighlighted = false
		return btn
	}()
	
	lazy var settingBtn: UIButton = {
		let btn = UIButton()
		btn.setImage(#imageLiteral(resourceName: "Setting"), for: .normal)
//		btn.adjustsImageWhenHighlighted = false
		return btn
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func configureUI() {
		weatherImgView.image = #imageLiteral(resourceName: "clear-day")
		self.addSubview(weatherImgView)
		weatherImgView.snp.makeConstraints { (make) in
			make.width.height.equalTo(equalScaling(size: 128))
			make.center.equalToSuperview()
		}
		self.addSubview(locationBtn)
		locationBtn.snp.makeConstraints { (make) in
			make.width.height.equalTo(equalScaling(size: 44))
			make.top.left.equalToSuperview().offset(equalScaling(size: 8))
		}
		
		self.addSubview(settingBtn)
		settingBtn.snp.makeConstraints { (make) in
			make.width.height.equalTo(equalScaling(size: 44))
			make.top.equalToSuperview().offset(equalScaling(size: 8))
			make.right.equalToSuperview().inset(equalScaling(size: 8))
		}
	}
	
}
