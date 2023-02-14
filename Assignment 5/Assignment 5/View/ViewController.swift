//
//  ViewController.swift
//  Assignment 5
//
//  Created by Brett Williams on 2/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var logic = converterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dollarAmount: UITextField!
    
    @IBAction func currency1(_ sender: UISwitch) {
        logic.curr1(sender.isOn)
    }
    @IBAction func currency2(_ sender: UISwitch) {
        logic.curr2(sender.isOn)
    }
    @IBAction func currency3(_ sender: UISwitch) {
        logic.curr3(sender.isOn)
    }
    @IBAction func currency4(_ sender: UISwitch) {
        logic.curr4(sender.isOn)
    }
    
    
    @IBAction func navigate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }
    
    //Attempted to move the below method into the converterLogic file, but was unable to pass either the UIStoryboardSegue or the segue.identifier without errors. In the Loan Calculator - MVC and Segue video you leave this part out of the Logic Model, so based on that fact and the errors that I have run into trying to move it I'm assuming this portion is supposed to stay here. I have also left the NavigateViewController logic out of the converterLogic due to this.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation"{
            let navigation = segue.destination as! NavigateViewController
            if dollarAmount.text != ""{
                if Int(dollarAmount.text!) != nil{
                    let check: Int? = Int(dollarAmount.text!)
                    navigation.USD = check!
                    
                    if logic.currency1 == true {
                        navigation.cur1 = "EUR"
                        navigation.val1 = Double(check!) * logic.EUR
                    }
                    if logic.currency2 == true {
                        navigation.cur2 = "JPY"
                        navigation.val2 = Double(check!) * logic.JPY
                    }
                    if logic.currency3 == true {
                        navigation.cur3 = "CHF"
                        navigation.val3 = Double(check!) * logic.CHF
                    }
                    if logic.currency4 == true {
                        navigation.cur4 = "GBP"
                        navigation.val4 = Double(check!) * logic.GBP
                    }
                }
            }
        }
    }
}

