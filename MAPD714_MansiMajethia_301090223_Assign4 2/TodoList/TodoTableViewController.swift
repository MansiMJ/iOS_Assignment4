//
//  TodoTableViewController.swift
//  MAPD714_MansiMajethia_301090223_Assign4
//
//  Created by Mansi Majethia on 2020-11-14.
//

import UIKit

//table cell class to manage table row content
class TodoTableViewCell: UITableViewCell {

    //variable declaration
    @IBOutlet var todoTaskName: UILabel!
    @IBOutlet var todoTaskStatus: UILabel!
    @IBOutlet var todoTaskSwitchButton: UISwitch!
    
    //strike task name if completed
    @IBAction func taskIsCompletedSwitchButton(_ sender: UISwitch) {
    
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: (todoTaskName?.text)!)
    
        if todoTaskSwitchButton.isOn {
            attributeString.removeAttribute(NSAttributedString.Key.strikethroughStyle, range: NSMakeRange(0, attributeString.length))
            todoTaskName.attributedText = attributeString
            todoTaskStatus?.text = "Overdue"
        }else{
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
            todoTaskName.attributedText = attributeString
            todoTaskStatus?.text = "Completed"
        }
    }
}

//
class TodoTableViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //variable declaration
    @IBOutlet var todoTable: UITableView!
    
    //declaration of array
    var taskNameArray = ["Clothes' List","Grocery List","Assigment checklist"]
    var taskStatus = ["Overdue","Friday November 14,2020","Overdue"]
    
    //load view
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTable.delegate = self
        todoTable.dataSource = self
        self.todoTable.rowHeight = 60.0
        self.title = "Todo"
    }
    
    //table view funcation
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoTableCell", for: indexPath) as! TodoTableViewCell
        cell.todoTaskName?.text = taskNameArray[indexPath.row]
        cell.todoTaskStatus?.text = taskStatus[indexPath.row]
        return cell
    }
}
