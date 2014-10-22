//
//  ViewController.swift
//  Postcard
//
//  Created by Rian Rainey.
//  Copyright (c) 2014 Rian.me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var enterNameTextField: UITextField!
    @IBOutlet var enterAMessageTextField: UITextField!
    @IBOutlet var mailButton: UIButton!
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we the press the button
        // Adding a Comment here to test commits
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
    }

}

