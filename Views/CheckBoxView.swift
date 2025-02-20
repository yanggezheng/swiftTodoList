//
//  CheckBoxView.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/5/25.
//

import SwiftUI

struct CheckBoxView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    var body: some View {
        Image(systemName: passedTaskItem.isCompleted() ? "checkmark.circle.fill" : "circle").foregroundColor(passedTaskItem.isCompleted() ? Color.green : .secondary).onTapGesture {
            withAnimation{
                if !passedTaskItem.isCompleted() {
                    passedTaskItem.completedDate = Date()
                    dateHolder.saveContext(viewContext)
                }
            }
        }
    }
}

#Preview {
    CheckBoxView(passedTaskItem: TaskItem())
}
