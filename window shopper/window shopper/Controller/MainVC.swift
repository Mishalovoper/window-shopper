//
//  ViewController.swift
//  window shopper
//
//  Created by MISHAL ALHAJRI on 12/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyTextField: CurrencyTextField!
    
    @IBOutlet weak var itemTextField: CurrencyTextField!
    
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
        print(wage.getHours(for: 250.42, item: 15.33))
    }

}

