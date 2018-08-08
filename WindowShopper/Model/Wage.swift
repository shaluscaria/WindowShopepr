//
//  Wage.swift
//  WindowShopper
//
//  Created by Shalu Scaria on 2018-08-08.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

class Wage{
    
    class func getHours(forWage wage:Double,forPrice price:Double)-> Int {
        return Int(ceil(price/wage))
    }
}
