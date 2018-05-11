//
//  InputView.swift
//  TestInputView
//
//  Created by Shane Whitehead on 11/5/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class InputView: NibView {
	
	let nibName = "InputView"
	
	@IBOutlet weak var textView: NextGrowingTextView!
	@IBOutlet weak var fieldOverlayImageView: UIImageView!
	
	@IBOutlet weak var textViewHeightConstraint: NSLayoutConstraint!
	
	override func loadNib() -> UIView? {
		return loadFromNib(named: nibName)
	}
}
