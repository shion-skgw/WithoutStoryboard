//
//  ViewController.swift
//  WithoutStoryboard
//
//  Created by Shion on 2020/05/30.
//  Copyright © 2020 Shion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func loadView() {
		let view = View(frame: UIScreen.main.bounds)
		view.backgroundColor = .lightGray
		self.view = view
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}

}

class View: UIView {

	override init(frame: CGRect) {
		super.init(frame: frame)
		let subview = UIView(frame: .zero)
		subview.backgroundColor = .cyan
		self.addSubview(subview)
	}

	required init?(coder: NSCoder) {
		fatalError()
	}

	override func layoutSubviews() {
		super.layoutSubviews()
		let statusBarFrame = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
		var subviewFrame = self.frame
		subviewFrame.origin.y += statusBarFrame.height
		subviewFrame.size.height -= statusBarFrame.height
		subviews.first?.frame = subviewFrame
	}

}
