//
//  ViewController.swift
//  EggTimer
//
//  Created by Joseph Chen on 11/2/16.
//  Copyright © 2016 Joseph Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    
    func countDown(){
        if(time > 0){
            time -= 1
            displayNum.text = String(time)
        }else{
            timer.invalidate()
        }
    }
    
    @IBOutlet weak var displayNum: UILabel!
    
    @IBAction func playTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        time = 210
        displayNum.text = String(time)
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        displayNum.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10{
            time -= 10
            displayNum.text = String(time)
        }
    }
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

