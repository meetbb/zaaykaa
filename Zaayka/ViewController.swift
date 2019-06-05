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
        CustomViews().setCustomView(self.loginCardView)
        CustomViews().setCustomButton(loginButton)
        CustomViews().setCustomImageButton(facebookBtn)
        CustomViews().setCustomImageButton(googlePlusBtn)
        CustomViews().setCustomImageButton(linkedInBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isValidCredentials() -> Bool {
        var isValid : Bool = true
        if loginTextField.text?.isEmpty ?? true {
            isValid = false
            DialogUtils().openPopUP("Zaaykaa", Message: "Please enter your Login Id", vc: self)
        }
        if passwdTextField.text?.isEmpty ?? true {
            isValid = false
            DialogUtils().openPopUP("Zaaykaa", Message: "Please enter your Password", vc: self)
        }
        return isValid
    }
    
    @IBAction func onLoginClick(sender: UIButton) {
        if isValidCredentials() {
            NSLog("LOGIN Successful.", "Login SuccessFul.")
            performSegueWithIdentifier("ShowLocalCuisines", sender: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowLocalCuisines" {
            let cuisineController = segue.destinationViewController as! CuisinesController
            cuisineController.title = "Cuisines"
        }
    }
}

