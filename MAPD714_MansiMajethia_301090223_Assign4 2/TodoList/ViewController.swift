//
//  ViewController.swift
//  MAPD714_MansiMajethia_301090223_Assign4
//
//  Created by Mansi Majethia on 2020-11-14.
//


import UIKit

class todViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
 }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoTableCell", for: indexPath) as! TodoTableViewCell
        
        cell.todoTaskName?.text = "Hello"
        cell.accessoryView = UISwitch()
        //cell.todoTaskEdit.image = UIImage(named: "imgCat")
        return cell
    }
    
}

