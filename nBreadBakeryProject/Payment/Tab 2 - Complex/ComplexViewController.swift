//
//  ComplexViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 10..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

var totalComplex:[allData] = []

class ComplexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var paramPay : Int = 0
    var paramTitle : String = ""
    var paramData : [(String, Bool, Bool)] = []
    
    @IBAction func complexNpay(_ sender: Any) {
        
        print(totalComplex)
        //값전달 확인
        return  //complexResultVC 로 값이 전달된다

    }
    
    @IBOutlet weak var groupName: UITextField!
    
    @IBOutlet weak var complexTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalComplex.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ComplexCell", for: indexPath as IndexPath)
        
        let totalComplexed = totalComplex[indexPath.row]
        cell.textLabel?.text = totalComplexed.title
        print(totalComplexed.title)
        
        var paymentStr = String(totalComplexed.payment)
        cell.detailTextLabel?.text = paymentStr
        print(paymentStr)
        
        return cell
 }
    
    override func viewWillAppear(_ animated: Bool) {
        print(totalComplex)
        complexTableView.reloadData()
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? AddedTableViewController {
            
            var selectedIndexPath = complexTableView.indexPathForSelectedRow
 
           if let indexPath = selectedIndexPath {
           vc.delegate = self //주소값 주기
           //vc.dataset = paramdataset            
           //let baramTitle = vc.groupTitle.text!
           //let baramPay = vc.groupPay.text!
            
            
            //델리게이트 주소값에서 가져오기...?
         }

        }
            }
    
    
    
}

