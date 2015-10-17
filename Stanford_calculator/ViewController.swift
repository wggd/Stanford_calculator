//
//  ViewController.swift
//  Stanford_calculator
//
//  Created by caffrey on 15/10/17.
//  Copyright © 2015年 caffrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var clear: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        
        let digit = sender.currentTitle!
        print("digit=\(digit)")
        
        
        if clear {
            
            display.text = display.text! + digit
            
        }else{
            
            display.text = digit
            
            clear = true
            
        }
        
    }
    
    var arrayNum = Array<Double>()
    
    @IBAction func enter() {

        clear = false
        
        arrayNum.append(displayValue)
        
        print("\(arrayNum)")
        
    }
    
    var displayValue: Double {
    
        get{
            
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
            
        }
        
        set{
            
            display.text = "\(newValue)"
            
            clear = false
            
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

