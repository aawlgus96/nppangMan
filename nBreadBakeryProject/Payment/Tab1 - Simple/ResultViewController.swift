//
//  ResultViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 7..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var payResult: UILabel!
    @IBOutlet weak var memo: UITextField!
    var paramPay: Double = 0
    var nextPayTotal: Double = 0
    var nextPayNum: Double = 0
    
    override func viewDidLoad() {
        let value = Int(paramPay)
        
        self.payResult.text = String(value) + "원"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func share(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Sharing", sender: self)
        
        
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dtn = segue.destination
        guard let svc = dtn as? SimpleSharingVC else {
            return
        }
        var nnpt = Int(nextPayTotal)
        var nnpn = Int(nextPayNum)
        var nnPay = Int(paramPay)
        
        svc.npnFin = nnpn
        svc.nptFin = nnpt
        svc.nPay = nnPay
    
        svc.memoText = self.memo.text!
        
        //svc.memoText = String(memo)
    }
    

}
