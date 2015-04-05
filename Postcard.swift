//
//  ViewController.swift
//  Postcard
//
//  Created by Justin Velasquez on 4/4/15.
//  Copyright (c) 2015 juswilvel design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var messageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false 
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor ()
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        messageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
        
    }

}

