//
//  SimpleSharingVC.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 7..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class SimpleSharingVC: UIViewController {

    @IBOutlet weak var sharingText: UILabel!
    
    var nptFin: Int = 0
    
    var npnFin: Int = 0
    
    var nPay: Int = 0
    
    var memoText:String = ""
    //줄바꾸기? : memoText.numberOfLines = 0
    
    override func viewDidLoad() {
        
        //super.viewDidLoad()
        
        
    //    self.sharingText.text = memoText

        // Do any additional setup after loading the view.
        
        
        sharingText.numberOfLines = 0
        var shareMsg = "모임 이름: \(memoText)에 대한 결과입니다. \n총액: \(nptFin)원 \n참여인원: \(npnFin)명 \n정산결과: \(nPay)원"
        
        self.sharingText.text = shareMsg
        
        
        
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
