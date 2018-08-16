//
//  ViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 7..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var payTotal: UITextField!
    @IBOutlet weak var payNum: UITextField!
    @IBOutlet weak var upDown: UISwitch!

    var valueResult: Double = 0
    var finalResult: Double = 0
    
    /*
    @IBAction func resultControl(_ sender: UISwitch) {
        guard let inTotal = Double(payTotal.text!) else {
            return
        }
        guard let numOfPeople = Int(payNum.text!) else {
            return
        }
        
        if (sender.isOn == true) {
            valueResult = inTotal / Double(numOfPeople)
            finalResult = round(valueResult/10) * 10
            
        } else {
            valueResult = inTotal / Double(numOfPeople)
            finalResult = valueResult.rounded(.toNearestOrAwayFromZero)
        }
    }
    */
   
    
    @IBAction func simpleDivide(_ sender: Any) {
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        guard let rvc = dest as? ResultViewController else {
            return
        }
        guard let inTotal = Double(payTotal.text!) else {
            return
        }
        guard let numOfPeople = Int(payNum.text!) else {
            return
        }
        if self.upDown.isOn == true {
            valueResult = inTotal / Double(numOfPeople)
            finalResult = round(valueResult/10) * 10
        } else {
            valueResult = inTotal / Double(numOfPeople)
            finalResult = valueResult.rounded(.toNearestOrAwayFromZero)
        }
        
        
        
        rvc.paramPay = finalResult
  
        guard let npn = Double(payNum.text!) else {
            return
        }
        
        guard let npt = Double(payTotal.text!) else {
            return
        }
        rvc.nextPayNum = npn
        rvc.nextPayTotal = npt
        
        
    }
    
 
}
