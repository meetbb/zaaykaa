//
//  ViewController.swift
//  Zaayka
//
//  Created by Meet Brahmbhatt on 29/05/19.
//  Copyright © 2019 MeetRao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginCardView: UIView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwdTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var linkedInBtn: UIImageView!
    @IBOutlet weak var googlePlusBtn: UIImageView!
    @IBOutlet weak var facebookBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setCustomView(self.loginCardView)
        setCustomButton(loginButton)
        setCustomImageButton(facebookBtn)
        setCustomImageButton(googlePlusBtn)
        setCustomImageButton(linkedInBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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

