//
//  ResultViewController.swift
//  TipsyApp
//
//  Created by Ekaterina Teliauberdina on 01.11.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var finalResult: String?
    var tip: Int?
    var split: Int?

    @IBOutlet var orangeView: UIView!
    @IBOutlet var totalLable: UILabel!
    @IBOutlet var settingsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orangeView.alpha = 0.8
        orangeView.layer.cornerRadius = 30
        
        totalLable.text = finalResult
        settingsLable.text = "Split between \(split ?? 0) people, with \(tip ?? 1)% tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
        
        totalLable.text = "0.0"
        settingsLable.text = "Split between \(split ?? 2) people, with \(tip ?? 0)% tip."
    }
}
