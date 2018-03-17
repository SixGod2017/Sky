//
//  Configuration.swift
//  Sky
//
//  Created by 222 on 2018/3/17.
//  Copyright © 2018年 222. All rights reserved.
//

import Foundation
import UIKit

let SC_WIDTH = UIScreen.main.bounds.size.width
let SC_HEIGHT = UIScreen.main.bounds.size.height

let SB_HEIGHT = UIApplication.shared.statusBarFrame.height

func equalScaling(size: Double) -> Double {
	let proportion = Double(SC_WIDTH) / 375
	return size * proportion
}

