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
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
