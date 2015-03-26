//
//  TaskModel.swift
//  listDaitems
//
//  Created by Fenkins on 26/03/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
// Interact with objc? Really? I dont know...
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
