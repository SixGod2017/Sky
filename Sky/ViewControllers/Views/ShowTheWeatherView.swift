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
		let imgView = UIImageView(image: #imageLiteral(resourceName: "clear-day"))
		imgView.contentMode = .scaleAspectFit
		return imgView
	}()
	
	lazy var locationBtn: UIButton = {
		let btn = UIButton()
		btn.setImage(#imageLiteral(resourceName: "LocationBtn"), for: .normal)
		return btn
	}()
	
	lazy var settingBtn: UIButton = {
		let btn = UIButton()
		btn.setImage(#imageLiteral(resourceName: "Setting"), for: .normal)
		return btn
	}()
	
	lazy var weatherLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont(name: "Arial-ItalicMT", size: 18)
		label.sizeToFit()
		return label
	}()
	
	lazy var dateLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 17)
		label.textColor = UIColor(displayP3Red: 233/255.0, green: 77/255.0, blue: 58/255.0, alpha: 1.0)
		label.sizeToFit()
		return label
	}()
	
	lazy var temperatureLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 28)
		label.textAlignment = .center
		label.sizeToFit()
		return label
	}()
	
	lazy var humidityLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont(name: "AppleSDGothicNeo-Thin", size: 28)
		label.textAlignment = .center
		label.sizeToFit()
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

extension ShowTheWeatherView {
	func configureUI() {
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
		
		self.addSubview(weatherLabel)
		weatherLabel.text = "Clear"
		weatherLabel.snp.makeConstraints { (make) in
			make.top.equalTo(weatherImgView.snp.bottom).offset(equalScaling(size: 8))
			make.centerX.equalToSuperview()
		}
		
		self.addSubview(dateLabel)
		dateLabel.snp.makeConstraints { (make) in
			make.top.equalTo(weatherLabel.snp.bottom).offset(equalScaling(size: 8))
			make.centerX.equalToSuperview()
		}
		
		self.addSubview(temperatureLabel)
		temperatureLabel.snp.makeConstraints { (make) in
			make.left.equalToSuperview().offset(equalScaling(size: 8))
			make.right.equalTo(weatherImgView.snp.left).offset(equalScaling(size: -8))
			make.centerY.equalToSuperview()
		}
		
		self.addSubview(humidityLabel)
		humidityLabel.snp.makeConstraints { (make) in
			make.right.equalToSuperview().offset(equalScaling(size: 8))
			make.left.equalTo(weatherImgView.snp.right).offset(equalScaling(size: 8))
			make.centerY.equalToSuperview()
		}
	}
}
