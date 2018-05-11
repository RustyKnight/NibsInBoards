//
//  ViewController.swift
//  TestInputView
//
//  Created by Shane Whitehead on 10/5/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var messageInputView: OverflowInputView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if #available(iOS 11.0, *) {
			let insets = view.safeAreaInsets
			print("viewDidLoad: insets = \(insets)")
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		if #available(iOS 11.0, *) {
			let insets = view.safeAreaInsets
			print("viewWillAppear: insets = \(insets)")
		}
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		if #available(iOS 11.0, *) {
			let insets = view.safeAreaInsets
			print("viewDidAppear: insets = \(insets)")
		}
		
		if #available(iOS 11.0, *) {
			let insets = view.safeAreaInsets
			messageInputView.offset = insets.bottom
//			view.setNeedsLayout()
//			view.layoutIfNeeded()
		} else {
			messageInputView.offset = 0
		}
	}

	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
	}
	

}

