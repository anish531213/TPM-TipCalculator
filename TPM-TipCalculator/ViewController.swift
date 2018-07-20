//
//  ViewController.swift
//  TPM-TipCalculator
//
//  Created by Anish Adhikari on 7/19/18.
//  Copyright © 2018 Anish Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputAmountTextField: UITextField!
    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateTotalAmount(_ sender: Any) {
        let tipPercentage = [0.15, 0.18, 0.2];
        let amount = Double(inputAmountTextField.text!) ?? 0;
        
        let tip = tipPercentage[tipPercentControl.selectedSegmentIndex]*amount;
        let total = tip+amount;
        
        tipLabel.text = String(format: "%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
    }
    
}

