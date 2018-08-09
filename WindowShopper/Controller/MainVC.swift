//
//  ViewController.swift
//  WindowShopper
//
//  Created by Shalu Scaria on 2018-08-01.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit


class MainVC: UIViewController {

    @IBOutlet var wageText: CustomPriceCheckerTF!
    @IBOutlet var priceText: CustomPriceCheckerTF!
    @IBOutlet var hourLbl: UILabel!
    @IBOutlet var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcBtn
        priceText.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = wageText.text, let priceTxt = priceText.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
            }
        }
        
    }


    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
}

