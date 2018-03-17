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

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func configureUI() {
		
	}
	
}
