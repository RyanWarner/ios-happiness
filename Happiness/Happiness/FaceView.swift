//
//  FaceView.swift
//  Happiness
//
//  Created by Ryan Warner on 2/21/16.
//  Copyright © 2016 Ryan Warner. All rights reserved.
//

import UIKit

class FaceView: UIView
{
	var lineWidth: CGFloat = 3
	{
		didSet
		{
			setNeedsDisplay()
		}
	}
	
	var color: UIColor = UIColor.blueColor()
	{
		didSet
		{
			setNeedsDisplay()
		}
	}
	
	var scale: CGFloat = 0.90
	{
		didSet
		{
			setNeedsDisplay()
		}
	}
	
	var faceCenter: CGPoint
	{
		get
		{
			return convertPoint(center, fromView: superview)
		}
	}
	
	var faceRadius: CGFloat
	{
		get
		{
			return min(bounds.size.width, bounds.size.height) / 2 * scale
		}
	}
	
	private struct Scaling
	{
		static let FaceRadiusToEyeRadiusRatio: CGFloat = 10
		static let FaceRadiusToEyeOffsetRatio: CGFloat = 3
		static let FaceRadiusToEyeSeparationRatio: CGFloat = 1.5
		static let FaceRadiusToMouthWidthRatio: CGFloat = 1
		static let FaceRadiusToMouthHeightRatio: CGFloat = 3
		static let FaceRadiusToMouthOffsetRatio: CGFloat = 3
	}
	
	

    override func drawRect(rect: CGRect)
	{
        let facePath = UIBezierPath(arcCenter: faceCenter,
									   radius: faceRadius,
									   startAngle: 0,
									   endAngle: CGFloat(2 * M_PI),
									   clockwise: true)
		facePath.lineWidth = lineWidth
		color.set()
		facePath.stroke()
    }

}
