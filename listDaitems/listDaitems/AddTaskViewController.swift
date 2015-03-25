//
//  AddTaskViewController.swift
//  listDaitems
//
//  Created by Fenkins on 22/03/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    var mainVC:ViewController!
    
    @IBOutlet weak var taskTextFieldOutlet: UITextField!
    @IBOutlet weak var subtaskTextFieldOutlet: UITextField!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancelButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func AddNewTaskButtonPressed(sender: UIButton) {
        var task = TaskModel(task: taskTextFieldOutlet.text, subtask: subtaskTextFieldOutlet.text, date: datePickerOutlet.date)
        mainVC.taskArrayStr.append(task)
        dismissViewControllerAnimated(true, completion: nil)
    }
}
