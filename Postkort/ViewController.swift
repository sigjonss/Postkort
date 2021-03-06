//
//  ViewController.swift
//  Postkort
//
//  Created by Administrator on 07/03/15.
//  Copyright (c) 2015 Laugargerdisskoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
        //Bæti við smá athugasemd
        //Bæti við
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Skilaboð send",forState:UIControlState.Normal)
        
    }
  
}


