//
//  TaskDetailViewController.swift
//  listDaitems
//
//  Created by Fenkins on 20/03/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var subtaskTextField: UITextField!
    
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    var detailTaskModel: TaskModel!
    
    var mainVC:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        taskTextField.text = detailTaskModel.task
        subtaskTextField.text = detailTaskModel.subtask
        dueDatePicker.date = detailTaskModel.date
        println(self.detailTaskModel.task)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func doneBarButtonTapped(sender: UIBarButtonItem) {
        var task = TaskModel(task: taskTextField.text, subtask: subtaskTextField.text, date: dueDatePicker.date)
        mainVC.taskArrayStr[mainVC.tableView.indexPathForSelectedRow()!.row] = task
        self.navigationController?.popViewControllerAnimated(true)
    }
}
