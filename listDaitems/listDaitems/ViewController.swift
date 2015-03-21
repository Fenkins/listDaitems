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
        
        let task0 = TaskModel(task: "Study French", subtask: "verbs", date: "19/04/2015")
        let task1 = TaskModel(task: "Eat dinner", subtask: "tasty burger", date: "19/04/2015")
        let task2 = TaskModel(task: "Exercise", subtask: "watch some vids", date: "19/04/2015")
        
        
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
        cell.date.text = taskStr.date
        return cell
    }
    
    
    // UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    performSegueWithIdentifier("showTaskDetail", sender: self)
    }
}

