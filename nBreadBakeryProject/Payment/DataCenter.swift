//
//  DataCenter.swift
//  Payment
//
//  Created by CAUAD14 on 2018/08/10.
//  Copyright © 2018年 CAUAD15. All rights reserved.
//

import Foundation

let complexCenter:Complex = Complex()
let fileName = "NbreadData.brch"


let dataCenter:Complex = Complex()

class Complex {
    
    var bigparties:[BigParty] = []
    
}

class BigParty {
    
    var smallparties:[SmallParty] = []
    
}

class SmallParty {
    var smallPartyTitle: String
    var smallPartyPay: String
    var smallData: (name:String,paid:Bool,join:Bool) = ("사람 1", false, false)
    
    init(){
        self.smallPartyTitle = "a"
        self.smallPartyPay = "1"
       
    }
}




