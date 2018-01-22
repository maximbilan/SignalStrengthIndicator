//
//  SignalStrengthIndicator.swift
//  SignalStrengthIndicator
//
//  Created by Maxim on 1/22/18.
//  Copyright © 2018 maximbilan. All rights reserved.
//

import UIKit

public class SignalStrengthIndicator: UIView {
	
	// MARK: - Level
	
	public enum Level: Int {
		case noSignal
		case veryLow
		case low
		case good
		case veryGood
		case excellent
	}
	
	private var _level = Level.noSignal
	
	public var level: Level {
		get {
			return _level
		}
		set(newValue) {
			_level = newValue
			setNeedsDisplay()
		}
	}
	
	// MARK: - Customization
	
	public var edgeInsets = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
	public var spacing: CGFloat = 3
	public var color = UIColor.black
	
	// MARK: - Constants
	
	private let indicatorsCount: Int = 5
	
	// MARK: - Drawing
	
	override public func draw(_ rect: CGRect) {
		guard let ctx = UIGraphicsGetCurrentContext() else {
			return
		}
		
		ctx.saveGState()
		
		let levelValue = level.rawValue
		
		let barsCount = CGFloat(indicatorsCount)
		let barWidth = (rect.width - edgeInsets.right - edgeInsets.left - ((barsCount - 1) * spacing)) / barsCount
		let barHeight = rect.height - edgeInsets.top - edgeInsets.bottom
		
		for index in 0...indicatorsCount - 1 {
			let i = CGFloat(index)
			let width = barWidth
			let height = barHeight - (((barHeight * 0.5) / barsCount) * (barsCount - i))
			let x: CGFloat = edgeInsets.left + i * barWidth + i * spacing
			let y: CGFloat = barHeight - height
			let cornerRadius: CGFloat = barWidth * 0.25
			let barRect = CGRect(x: x, y: y, width: width, height: height)
			let clipPath: CGPath = UIBezierPath(roundedRect: barRect, cornerRadius: cornerRadius).cgPath
			
			ctx.addPath(clipPath)
			ctx.setFillColor(color.cgColor)
			ctx.setStrokeColor(color.cgColor)
			
			if index + 1 > levelValue {
				ctx.strokePath()
			}
			else {
				ctx.fillPath()
			}
		}
		
		ctx.restoreGState()
	}
	
}
