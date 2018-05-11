//
//  NibView.swift
//  TestInputView
//
//  Created by Shane Whitehead on 11/5/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class NibView: UIView {
	
	var contentView: UIView?
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		guard let view = loadNib() else { return }
		
		view.frame = self.bounds
		self.addSubview(view)
		contentView = view
	}
	
	func loadNib() -> UIView? {
		fatalError("Not yet implemented")
	}
	
	func loadFromNib(named: String) -> UIView? {
		let bundle = Bundle(for: type(of: self))
		let nib = UINib(nibName: named, bundle: bundle)
		return nib.instantiate(withOwner: self, options: nil).first as? UIView
	}
}
