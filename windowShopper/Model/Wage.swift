//
//  Wage.swift
//  windowShopper
//
//  Created by West Kraemer on 10/19/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
    return Int(ceil(price / wage))
    }
}

