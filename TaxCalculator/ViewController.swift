//
//  ViewController.swift
//  TaxCalculator
//
//  Created by Khaya Mathebula on 2017/11/28.
//  Copyright © 2017 Aeon Source. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orderNumberField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var subTotalField: UITextField!
    @IBOutlet weak var taxField: UITextField!
    @IBOutlet weak var totalField: UITextField!
    let taxPercentage: Double = 0.55
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subTotalField.isEnabled = false
        taxField.isEnabled = false
        totalField.isEnabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTax(_ sender: UIButton) {
        let orderNum:Double = Double(orderNumberField.text!)!
        let state:String = stateField.text!
        
        if state == "WI" || state == "Wisconsin" {
            let taxAmount = orderNum * taxPercentage
            let totalAmount = orderNum + taxAmount
            subTotalField.text = String(orderNum)
            taxField.text = String("R \(taxAmount)")
            totalField.text = String("R \(totalAmount)")
        } else {
            subTotalField.text = String(orderNum)
            taxField.text = String("R 0.00")
            totalField.text = String("R \(orderNum)")
        }
    }
    
}

