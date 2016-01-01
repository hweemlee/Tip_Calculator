//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Queena Ly on 12/15/15.
//  Copyright © 2015 Hwee Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChange(sender: AnyObject) {
        
        var tipPrecentages = [0.15 , 0.20 ,0.25 ]
        var tipPercentage = tipPrecentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = NSString (string : billField.text!).doubleValue
        
        var tip = billAmount * tipPercentage
        
        var total = billAmount + tip
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String (format :"$%.2f" , tip)
        totalLabel.text =  String(format:"$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    let defaults = NSUserDefaults.standardUserDefaults()

}

