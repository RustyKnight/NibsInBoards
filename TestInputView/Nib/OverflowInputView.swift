//
//  OverflowInputView.swift
//  TestInputView
//
//  Created by Shane Whitehead on 11/5/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class OverflowInputView: NibView {
	
	let nibName = "OverflowInputView"
	
	@IBOutlet weak var textInputView: InputView!
	
	@IBOutlet weak var inputViewBottomConstraint: NSLayoutConstraint!
	
	var offset: CGFloat = 0 {
		didSet {
			inputViewBottomConstraint.constant = offset
		}
	}

	override func loadNib() -> UIView? {
		return loadFromNib(named: nibName)
	}
}
