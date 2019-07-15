//
//  CurrencyTextField.swift
//  window shopper
//
//  Created by MISHAL ALHAJRI on 12/11/1440 AH.
//  Copyright © 1440 MISHAL ALHAJRI. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    private func customizedView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.248046875)
        layer.cornerRadius = 2.5
        textAlignment = .center
        
        // place holder changing to a white foreground
        
        if let p = placeholder {
            let place = NSAttributedString(string: placeholder! , attributes: [ .foregroundColor : UIColor.white ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
