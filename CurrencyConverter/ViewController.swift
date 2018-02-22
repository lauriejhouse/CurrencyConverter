//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Jackie on 2/21/18.
//  Copyright © 2018 LAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
 
    
    @IBAction func clearButton(_ sender: Any) {
        
        inputTextField.text = " "
        euroLabel.text = "0.0"
        yenLabel.text = "0.0"
        poundLabel.text = "0.0"
    }
    
  
    
    
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    override func viewDidLoad() {
        inputTextField.delegate = self
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //called when return key is pressed
    func textFieldShouldReturn (_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //called when user taps outside text field
    
    override func touchesBegan(_ touches: Set<UITouch>, with: UIEvent?) {
        view.endEditing(true)
    }
}

