//
//  DateScroller.swift
//  TodoListSwiftUI
//
//  Created by Yangge Zheng on 1/5/25.
//

import SwiftUI

struct DateScroller: View {
    @EnvironmentObject var dateHolder: DateHolder
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        HStack{
            Spacer()
            Button(action:moveBack){
                Image(systemName: "arrow.left").imageScale(.large).font(Font.title.weight(.bold))
            }
            Text(dateFormatted()).font(.title).bold().animation(.none).frame(maxWidth:.infinity)
            Button(action:moveForward){
                Image(systemName: "arrow.right").imageScale(.large).font(Font.title.weight(.bold))
            }
        }
    }
    func dateFormatted()->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd LLL yy"
        return dateFormatter.string(from: dateHolder.date)
    }
    func moveBack(){
        withAnimation{
            dateHolder.moveDate(-1, viewContext)
        }
    }
    func moveForward(){
        withAnimation{
            dateHolder.moveDate(1, viewContext)
        }
    }

}

#Preview {
    DateScroller()
}
