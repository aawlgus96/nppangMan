//
//  GroupCell.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 10..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

let onoff = GruopVO()

class GroupCell: UITableViewCell {

    @IBOutlet weak var man: UITextField!
    @IBOutlet weak var btnPaid: UIButton!
    @IBOutlet weak var btnJoin: UIButton!
    
    @IBAction func checkBoxTapped(_ sender: UIButton) { //결제자 체크
        
        if sender.isSelected {
            sender.isSelected = false
            onoff.paid = true
        } else {
            sender.isSelected = true
            onoff.paid = false
        }
    }
    @IBAction func checkBoxTapped2(_ sender: UIButton) { //참여자 체크
        if sender.isSelected {
            sender.isSelected = false
            onoff.join = true
        } else {
            sender.isSelected = true
            onoff.join = false
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
