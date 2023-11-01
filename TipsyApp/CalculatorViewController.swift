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
    
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var fiveteenPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orangeView.alpha = 0.8
        orangeView.layer.cornerRadius = 30
    }

    @IBAction func tipChanged(_ sender: UIButton) {
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

