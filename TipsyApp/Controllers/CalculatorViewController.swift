//
//  ViewController.swift
//  TipsyApp
//
//  Created by Ekaterina Teliauberdina on 25.10.2023.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var orangeView: UIView!
    
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var splitNumberLable: UILabel!
    
    @IBOutlet var fivePctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var fiveteenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    
    var tip = 0.0
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orangeView.alpha = 0.8
        orangeView.layer.cornerRadius = 30
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        billTextField.text = ""
        splitNumberLable.text = "2"
        fivePctButton.isSelected = false
        tenPctButton.isSelected = false
        fiveteenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
        fivePctButton.isSelected = false
        tenPctButton.isSelected = false
        fiveteenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle ?? ""
        let buttonTitleMinusPersentSingn = String(buttonTitle.dropLast())
        let buttonTitleAsNumber = Double(buttonTitleMinusPersentSingn) ?? 0.0
        tip = buttonTitleAsNumber / 100
        print(buttonTitle)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLable.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text ?? ""
        
        if bill != "" {
            billTotal = Double(bill) ?? 0.0
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as? ResultViewController
            resultVC?.finalResult = finalResult
            resultVC?.split = numberOfPeople
            resultVC?.tip = Int(tip * 100)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

