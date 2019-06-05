//
//  DialogUtils.swift
//  Zaayka
//
//  Created by Meet Brahmbhatt on 31/05/19.
//  Copyright © 2019 MeetRao. All rights reserved.
//

import Foundation
import UIKit

class DialogUtils: NSObject {
    
    func openPopUP(Title: String, Message: String, vc: UIViewController){
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style:   UIAlertActionStyle.Default, handler: nil))
        vc.presentViewController(alert, animated: true, completion: nil)
    }
}