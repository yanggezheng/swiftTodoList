//
//  TaskFilter.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/6/25.
//

import SwiftUI
enum TaskFilter :String{
    static var allFilters : [TaskFilter]
    {
        [.NonCompleted, .Completed, .OverDue, .All]
    }
    case All = "All"
    case NonCompleted = "To Do"
    case Completed = "Completed"
    case OverDue = "Overdue"
}
