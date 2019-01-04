//
//  ViewController.swift
//  tipIT
//
//  Created by Harmandeep Singh on 1/3/19.
//  Copyright © 2019 Harmandeep Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var divideLable: UILabel!
    @IBOutlet weak var shareControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
    }

    //the tap gesture to quit the keyboard
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    // everytime bill field is changed
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15, 0.18, 0.20, 0.25, 0.30]
        let share = [1,2,3,4,5,6]
        let bill = Double(billField.text!) ?? 0 //bill entered
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex] //generated tip
        let total = bill + tip
        let eachPay = total/Double(share[shareControl.selectedSegmentIndex])
        
        //assigining values back to ui
        totalLable.text = String(format: "$%.2f", total)
        tipLable.text = String(format: "$%.2f", tip)
        divideLable.text = String(format: "$%.2f", eachPay)

    }

}
