//
//  CustomPriceCheckerTF.swift
//  WindowShopper
//
//  Created by Shalu Scaria on 2018-08-01.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

//Customization would show up in intrerface builder

@IBDesignable class CustomPriceCheckerTF: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame:(CGRect(x: 5, y: frame.size.height/2-size/2, width: size, height: size)))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5723067522, green: 0.5723067522, blue: 0.5723067522, alpha: 0.4284300086)
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customizeTextField()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()
    }
    
    func customizeTextField (){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
