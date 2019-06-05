//
//  CustomViews.swift
//  Zaayka
//
//  Created by Meet Brahmbhatt on 31/05/19.
//  Copyright © 2019 MeetRao. All rights reserved.
//

import Foundation
import UIKit

class CustomViews: NSObject {
    
    func setCustomView(customView: UIView) {
        customView.layer.cornerRadius = 30
        customView.clipsToBounds = true
        customView.layer.shadowColor = UIColor.blackColor().CGColor
        customView.layer.shadowOpacity = 0.1
        customView.layer.shadowOffset = CGSize(width: 10, height: 10)
        customView.layer.shadowRadius = 1
        customView.layer.masksToBounds = false
    }
    
    func setCustomButton(customView: UIButton) {
        customView.layer.shadowColor = UIColor.blackColor().CGColor
        customView.layer.shadowOpacity = 0.1
        customView.layer.shadowOffset = CGSize(width: 2, height: 2)
        customView.layer.shadowRadius = 1
        customView.layer.masksToBounds = false
    }
    
    func setCustomImageButton(customView: UIImageView) {
        customView.layer.shadowColor = UIColor.blackColor().CGColor
        customView.layer.shadowOpacity = 0.1
        customView.layer.shadowOffset = CGSize(width: 2, height: 2)
        customView.layer.shadowRadius = 1
        customView.layer.masksToBounds = false
    }
}