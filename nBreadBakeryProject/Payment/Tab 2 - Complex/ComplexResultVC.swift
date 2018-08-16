//
//  ComplexResultVC.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 8..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class ComplexResultVC: UIViewController {

    
    @IBAction func roundOnOff(_ sender: UISwitch) {
    }
    
    @IBOutlet weak var resultValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValue.numberOfLines = 0
        resultValue.text = "사람 1 : 사람 4에게 20000 원 \n사람 2 : 사람 1에게 93340 원 \n 사람 4에게 20000 원 \n사람 3 : 사람 1에게 100000 원 \n 사람 2에게 6660 원 \n"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
