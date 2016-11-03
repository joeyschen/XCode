//
//  ViewController.swift
//  Is It Prime
//
//  Created by Joseph Chen on 11/1/16.
//  Copyright © 2016 Joseph Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerText: UILabel!
    @IBOutlet weak var numberInput: UITextField!
    
    @IBAction func button(_ sender: Any) {
        if let enteredUserString = numberInput.text{
            let enteredUserNum = Int(enteredUserString)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

