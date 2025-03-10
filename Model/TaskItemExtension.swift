//
//  TaskItemExtension.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/5/25.
//

import SwiftUI
extension TaskItem {
    func isCompleted() -> Bool {
        return completedDate != nil
    }
    func isOverdue() -> Bool {
        if let due = dueDate{
            return !isCompleted() && scheduleTime && due < Date()
        }
        return false
    }
    func overDueColor() -> Color {
        return isOverdue() ? Color.red : Color.green
    }
    func dueDateTimeOnly() -> String {
        if let due = dueDate {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh.mm a"
            return dateFormatter.string(from: due)
        }
        return ""
    }
}
