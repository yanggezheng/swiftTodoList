//
//  TodoListSwiftUIApp.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/5/25.
//

import SwiftUI

@main
struct TodoListSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext).environmentObject(dateHolder)
        }
    }
}
