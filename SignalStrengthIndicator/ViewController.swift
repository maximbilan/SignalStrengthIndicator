//
//  ViewController.swift
//  SignalStrengthIndicator
//
//  Created by Maxim on 1/22/18.
//  Copyright © 2018 maximbilan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// MARK: - Outlets
	
	@IBOutlet weak var signalStrength: SignalStrengthIndicator!
	
	// MARK: - Level
	
	fileprivate var level: Int = 0

	// MARK: - Controller Loading
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		signalStrength.color = UIColor.gray
	}
	
	// MARK: - Actions
	
	@IBAction func upPressed(_ sender: UIButton) {
		let value = self.level + 1
		if let level = SignalStrengthIndicator.Level(rawValue: value) {
			signalStrength.level = level
			 self.level = value
		}
	}
	
	@IBAction func downPressed(_ sender: UIButton) {
		let value = self.level - 1
		if let level = SignalStrengthIndicator.Level(rawValue: value) {
			signalStrength.level = level
			self.level = value
		}
	}
	
}
