//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bhavananda Das on 13.06.2022.
//
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMILabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
        
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)    }
    
    
     
    
}
