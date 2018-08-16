//
//  AddedTableViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 10..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

let gvo = GruopVO()

class GroupCell: UITableViewCell {
    
    @IBOutlet weak var man: UITextField!
    @IBOutlet weak var btnPaid: UIButton!
    @IBOutlet weak var btnJoin: UIButton!
    
    @IBAction func checkBoxTapped(_ sender: UIButton) { //결제자 체크
        
        if sender.isSelected {
            sender.isSelected = false
            gvo.paid = false
            gvo.payBool.removeLast()
            
        } else {
            sender.isSelected = true
            gvo.paid = true
            gvo.payBool.append(true)
            
            //클릭을 한번 더 했을 경우 paid가 다시 false로 바뀌는 문제...true를 한번 제거해야 하나?
            //클릭을 세번 더 했을 경우는? ......
        
        }
        
        
        if gvo.payBool.count > 1 {
            print("error")
            let alert = UIAlertView(title: "결제자 지정 오류", message: "항목당 결제자는 한 명만 지정할 수 있습니다.", delegate: nil, cancelButtonTitle: "확인")
            alert.show()
            sender.isEnabled = false
            
            //            var alert = UIAlertController(title: "결제자 지정 오류", message: "항목당 결제자는 한 명만 지정할 수 있습니다.", preferredStyle: UIAlertControllerStyle.alert)
            //            alert.addAction(UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: nil))
            //            alert.present(alert, animated: true)
       
        }
        
    }
    @IBAction func checkBoxTapped2(_ sender: UIButton) { //참여자 체크
        if sender.isSelected {
            sender.isSelected = false
            gvo.join = false
        } else {
            sender.isSelected = true
            gvo.join = true
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

struct allData {
    var title: String
    var payment: Int
    var tupledata: [(String, Bool, Bool)]
}


class AddedTableViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    var countMember:Int = 2
    //델리게이트 선언
    var delegate:ComplexViewController?
    
    @IBOutlet weak var groupTitle: UITextField! 
    @IBOutlet weak var groupPay: UITextField!
    @IBOutlet weak var tableView: UITableView!
    

    //저장하기 버튼
    @IBAction func saveButton(_ sender: Any) {
        let allDatas = allData(title: groupTitle.text!, payment: Int(groupPay.text!)!, tupledata: dataset)
        
        //        delegate?.paramTitle = groupTitle.text!
        //        delegate?.paramPay = Int(groupPay.text!)!
        //        delegate?.paramData = dataset
        //
        
        totalComplex.append(allDatas)
        delegate?.complexTableView.reloadData()
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func addPerson(_ sender: Any) {
        insertNewPerson()
        countMember += 1
        
        return // 추가해봄
    }
    
    func insertNewPerson() {
        dataset.append(("사람 \(countMember)", gvo.paid, gvo.join))
        let indexPath = IndexPath(row: list.count - 1, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        view.endEditing(true)
        
    }
    
    //var dataset =  [("사람 1", false, true)]
    var dataset =  [("사람 1", gvo.paid, gvo.join)]
    
    
    // ("사람 2", false, false), ("사람 3", false, true)
    var list: [GruopVO] {
        var datalist = [GruopVO] () //배열 초기화
        for (name, paid, join) in self.dataset {
            //let gvo = GruopVO ()
            gvo.name = name
            gvo.paid = paid
            gvo.join = join
            
            datalist.append(gvo)
        }; return datalist
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! GroupCell
        cell.man?.text = row.name
        
        if(row.paid == false){
            cell.btnPaid.imageView?.image = UIImage(named: "blank-check-box")
            
        } else {
            cell.btnPaid.imageView?.image = UIImage(named: "check-box")
            
            
            //클릭을 한번 더 했을 경우 paid가 다시 false로 바뀌는 문제...true를 한번 제거해야 함
            //클릭을 세번 더 했을 경우는? ......
            
        }
        if (row.join == false) {
            cell.btnJoin.imageView?.image = UIImage(named: "blank-check-box")
        } else {
            cell.btnJoin.imageView?.image = UIImage(named: "check-box")
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            dataset.remove(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    

 }


