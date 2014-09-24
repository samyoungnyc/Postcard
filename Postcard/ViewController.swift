//
//  ViewController.swift
//  Postcard
//
//  Created by Computer on 9/23/14.
//  Copyright (c) 2014 Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameField: UITextField!
    
    @IBOutlet weak var enterMsgField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPress(sender: UIButton) {
        nameLabel.hidden = false
        nameLabel.text = enterNameField.text
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.hidden = false
        messageLabel.text = enterMsgField.text
        // SET   the variable to   GET  (set-to happens on the left of '=', get happens on the right of '='
        enterNameField.text = ""; enterMsgField.text = ""
        enterMsgField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }
}

