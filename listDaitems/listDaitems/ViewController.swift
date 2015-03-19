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
    
    var taskArray:[Dictionary<String,String>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let task0:Dictionary<String,String> = ["task":"Study French", "subtask":"verbs", "date":"19/04/2015"]
        println(task0["task"])
        let task1:Dictionary<String,String> = ["task":"Eat dinner", "subtask":"tasty burger", "date":"19/04/2015"]
        let task2:Dictionary<String,String> = ["task":"Exercise", "subtask":"watch some vids", "date":"19/04/2015"]
        taskArray = [task0, task1, task2]
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println(indexPath.row)
        let taskDict:Dictionary = taskArray[indexPath.row]
        var cell:TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        cell.task.text = taskDict["task"]
        cell.subtask.text = taskDict["subtask"]
        cell.date.text = taskDict["date"]
        return cell
    }
    
    
    // UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

