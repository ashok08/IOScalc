//
//  ViewController.swift
//  pro1
//
//  Created by Intern on 07/06/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: -Outlets
    @IBOutlet weak var display: UILabel!
    @IBAction func point(_ sender: UIButton)
    {
        
        let digit = sender.currentTitle
        if (digit ==  "."){
            
            if display.text!.range(of: ".") == nil{
                display.text = display.text! + "."
            }
            else{
            }
            
        }}
    var middle = false
    var previous: Double = 0.0
    var numberon: Double = 0.0
    var oper: String = ""
    
    //MARK: -Prag2
    
    @IBAction func number(_ sender: UIButton)
    {
        if middle == false
        {
            display.text = sender.currentTitle
            if let val = display.text{
                if let val1 = Double(val)
                {
                    numberon = val1
                }
            }
        }
        else
            
        {
            display.text = display.text! + String(sender.currentTitle!)
            if let val2 = display.text{
                if let val3 = Double(val2)
                {
                    numberon = val3
                }
            }
        }
        middle = true}
    @IBAction func action(_ sender: UIButton)
    {
        
        if  sender.tag != 16 {
            
            
            if Double(String(previous)) != 0.0
            {
                
                if let val8 = display.text{
                    if let val9 = Double(val8)
                    {
                        numberon = val9
                    }
                }
                
                if oper == "+"
                {
                    previous = Double(previous + numberon)
                    display.text = String(previous)
                }
                else if oper == "-"
                {
                    previous = Double(previous - numberon)
                    display.text = String(previous)
                }
                else if oper == "*"
                {
                    previous = Double(previous * numberon)
                    display.text = String(previous)
                    
                }
                else if oper == "/"
                {
                    previous = Double(previous / numberon)
                    display.text = String(previous)
                }
                oper = sender.currentTitle!
            }
            else {
                if let val4 = display.text{
                    if let val5 = Double(val4)
                    {
                        previous = val5
                        oper = sender.currentTitle!
                    }
                }
            }
            
            middle = false
        }
        else if sender.tag == 16
        {
            if oper == "+"
            {
                display.text = String(previous + numberon)
            }
            else if oper == "-"
            {
                display.text = String(previous - numberon)
            }
            else    if oper == "*"
            {
                display.text = String(previous * numberon)
            }
            else   if oper == "/"
            {
                display.text = String(previous / numberon)
            }
        }
        
        middle = false
    }
    
    @IBAction func clear(_ sender: UIButton)
    {
        display.text = ""
        numberon = 0
        oper = ""
        previous = 0
    }
    
    
    var displayvalue: Double{
        get{
            return Double(display.text!)!            }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func special(_ sender: UIButton)
    {
        middle = false
        let action = sender.currentTitle!
        switch action{
        case "∏":
            displayvalue = Double.pi
        case "√":
            displayvalue = sqrt(displayvalue)
        default:
            break
        }
        
    }
    
}
