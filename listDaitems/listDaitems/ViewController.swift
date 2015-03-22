//
//  ViewController.swift
//  listDaitems
//
//  Created by Fenkins on 18/03/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
//    var taskArray:[Dictionary<String,String>] = []
    var taskArrayStr:[TaskModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date1 = Date.from(year: 2015, month: 3, day: 15)
        let date2 = Date.from(year: 2015, month: 3, day: 16)
        let date3 = Date.from(year: 2015, month: 3, day: 18)
        
        
        let task0 = TaskModel(task: "Study French", subtask: "verbs", date: date1)
        let task1 = TaskModel(task: "Eat dinner", subtask: "tasty burger", date: date2)
        let task2 = TaskModel(task: "Exercise", subtask: "watch some vids", date: date3)
        
        
//        let task0:Dictionary<String,String> = ["task":"Study French", "subtask":"verbs", "date":"19/04/2015"]
//        println(task0["task"])
//        let task1:Dictionary<String,String> = ["task":"Eat dinner", "subtask":"tasty burger", "date":"19/04/2015"]
//        let task2:Dictionary<String,String> = ["task":"Exercise", "subtask":"watch some vids", "date":"19/04/2015"]
        taskArrayStr = [task0, task1, task2]
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showTaskDetail" {
            //making a constant type of TaskDetailViewController that perform the segue to it
            let detailVC:TaskDetailViewController = segue.destinationViewController as TaskDetailViewController
            //setting the constant for the row selected earlyer
            let indexPath = self.tableView.indexPathForSelectedRow()
            //setting the constant to the row of the taskArrayStr
            let thistask = taskArrayStr[indexPath!.row]
            //dynamically filling the property of detailTaskModel that is a type of struct of TaskModel with the content of taskArrayStr to use task/subtask/date instances in the future
            //so we are filling up the rows in the main table view aswell as the taskDetail with the content of the taskArrayStr
            detailVC.detailTaskModel = thistask
        }
    }
    // UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArrayStr.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println(indexPath.row)
        let taskStr:TaskModel = taskArrayStr[indexPath.row]
        var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        cell.task.text = taskStr.task
        cell.subtask.text = taskStr.subtask
        cell.date.text = Date.toString(date: taskStr.date)
        return cell
    }
    
    
    // UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    performSegueWithIdentifier("showTaskDetail", sender: self)
    }
}

