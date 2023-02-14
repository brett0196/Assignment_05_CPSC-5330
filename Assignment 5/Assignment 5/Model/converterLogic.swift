//
//  converterLogic.swift
//  Assignment 5
//
//  Created by Brett Williams on 2/13/23.
//

import Foundation

struct converterLogic{
    
    var currency1 = true
    var currency2 = true
    var currency3 = true
    var currency4 = true
    
    //Info pulled on 2/13/2023 @ 8PM
    var EUR = 0.93
    var JPY = 132.04
    var CHF = 0.92
    var GBP = 0.82
    
    mutating func curr1(_ switchValue: Bool){
        if switchValue {
            currency1 = true
        } else{
            currency1 = false
        }
    }
    
    mutating func curr2(_ switchValue: Bool){
        if switchValue {
            currency2 = true
        } else{
            currency2 = false
        }
    }
    
    mutating func curr3(_ switchValue: Bool){
        if switchValue {
            currency3 = true
        } else{
            currency3 = false
        }
    }
    
    mutating func curr4(_ switchValue: Bool){
        if switchValue {
            currency4 = true
        } else{
            currency4 = false
        }
    }
}
