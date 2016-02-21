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
			return min(bounds.size.width, bounds.size.height) / 2
		}
	}

    override func drawRect(rect: CGRect)
	{
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: true)
    }

}
