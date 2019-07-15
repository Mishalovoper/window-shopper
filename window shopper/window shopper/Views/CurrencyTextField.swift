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
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let CurrencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2 , width: size, height: size))
        CurrencyLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.7020280394)
        CurrencyLbl.textAlignment = .center
        CurrencyLbl.textColor = UIColor.white
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        CurrencyLbl.text = formatter.currencySymbol!
        CurrencyLbl.clipsToBounds = true
        addSubview(CurrencyLbl)
    }
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
