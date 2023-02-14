//
//  NavigateViewController.swift
//  Assignment 5
//
//  Created by Brett Williams on 2/12/23.
//

import UIKit

class NavigateViewController: UIViewController {

    var USD = -1
    var cur1 = ""
    var cur2 = ""
    var cur3 = ""
    var cur4 = ""
    
    var val1 = 0.0
    var val2 = 0.0
    var val3 = 0.0
    var val4 = 0.0
    
    @IBOutlet weak var usdAmount: UILabel!
    
    
    @IBOutlet weak var currency1: UILabel!
    
    @IBOutlet weak var currency2: UILabel!
    
    @IBOutlet weak var currency3: UILabel!
    
    @IBOutlet weak var currency4: UILabel!
    
    
    @IBOutlet weak var value1: UILabel!
    
    @IBOutlet weak var value2: UILabel!
    
    @IBOutlet weak var value3: UILabel!
    
    @IBOutlet weak var value4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(USD == -1){
            usdAmount.text = "Invalid user input."
        }else{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            
            usdAmount.text = "$\(USD)"
            
            if(cur1 != ""){
                guard let num1 = numberFormatter.string(from: NSNumber(value: val1)) else{fatalError("Error.")}
                currency1.text = cur1
                value1.text = "£\(num1)"
            }
            if(cur2 != ""){
                guard let num2 = numberFormatter.string(from: NSNumber(value: val2)) else{fatalError("Error.")}
                currency2.text = cur2
                value2.text = "¥\(num2)"
            }
            if(cur3 != ""){
                guard let num3 = numberFormatter.string(from: NSNumber(value: val3)) else{fatalError("Error.")}
                currency3.text = cur3
                //Swiss Francs don't usually use a symbol when writing them.
                value3.text = num3
            }
            if(cur4 != ""){
                guard let num4 = numberFormatter.string(from: NSNumber(value: val4)) else{fatalError("Error.")}
                currency4.text = cur4
                value4.text = "£\(num4)"
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
