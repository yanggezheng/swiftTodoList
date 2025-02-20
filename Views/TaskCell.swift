//
//  TaskCell.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/5/25.
//

import SwiftUI

struct TaskCell: View {
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    var body: some View {
        HStack{
            CheckBoxView(passedTaskItem: passedTaskItem).environmentObject(dateHolder)
            Text(passedTaskItem.name ?? "").padding(.horizontal)
            if !passedTaskItem.isCompleted()&&passedTaskItem.scheduleTime{
                Spacer()
                Text(passedTaskItem.dueDateTimeOnly()).font(.footnote).foregroundColor(passedTaskItem.overDueColor()).padding(.horizontal)
            }
        }
    }
}

#Preview {
    TaskCell(passedTaskItem: TaskItem())
}
