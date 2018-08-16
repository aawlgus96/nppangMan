//
//  TabViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 12..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Banknumber]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /*override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
     // Dispose of any resources that can be recreated.
     }*/
    @IBAction func onPlusTapped() {
        let alert = UIAlertController(title: "계좌번호 추가", message: nil, preferredStyle: .alert)
        alert.addTextField { (textfield) in textfield.placeholder = "은행"}
        alert.addTextField{ (textfield) in textfield.placeholder = "계좌번호"
            textfield.keyboardType = .numberPad
        }
        let action = UIAlertAction(title: "입력", style: .default){(_) in
            let name = alert.textFields!.first!.text!
            let age = alert.textFields!.last!.text!
            let banknumber = Banknumber(context : PersistenceService.context)
            banknumber.bank = name
            banknumber.number = age
            PersistenceService.saveContext()
            self.people.append(banknumber)
            self.tableView.reloadData()
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

extension TabViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = people[indexPath.row].bank
        cell.detailTextLabel?.text = people[indexPath.row].number
        
        return cell
    }
}
