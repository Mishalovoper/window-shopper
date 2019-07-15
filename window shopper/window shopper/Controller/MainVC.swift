//
//  ViewController.swift
//  window shopper
//
//  Created by MISHAL ALHAJRI on 12/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var dollarCounter = 0
    @IBOutlet weak var hourlyTextField: CurrencyTextField!
    
    @IBOutlet weak var itemTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    let wage = Wage()
    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        btn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        btn.setTitle("Calculate !", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        hourlyTextField.inputAccessoryView = btn
        itemTextField.inputAccessoryView = btn
    }
    
    @objc func calculate() {
        if let hours = hourlyTextField, let item = itemTextField {
            view.endEditing(true)
            let hourly = Double(hourlyTextField.text!)
            let item = Double(itemTextField.text!)
            let result = wage.getHours(for: hourly!, item: item!)
            
            resultLbl.text = String(result)
        }
    }
    @IBAction func clearPressed(_ sender: Any) {
        hourlyTextField.text = ""
        itemTextField.text = ""
        resultLbl.text = "0"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

