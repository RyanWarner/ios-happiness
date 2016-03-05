//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Ryan Warner on 2/21/16.
//  Copyright © 2016 Ryan Warner. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{
	@IBOutlet weak var faceView: FaceView! {
		didSet {
			faceView.dataSource = self
		}
	}
	
	var happiness: Int = 10 // 0 - Sad, 100 - happy
	{
		didSet
		{
			happiness = min( max( happiness, 0 ), 100 )
			updateUI(  )
		}
	}
	
	private func updateUI(  )
	{
		faceView.setNeedsDisplay()
	}
	
	func smilinessForFaceView( sender: FaceView ) -> Double?
	{
		return Double( happiness - 50 ) / 50
	}

}
