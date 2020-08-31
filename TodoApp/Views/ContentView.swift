//
//  ContentView.swift
//  TodoApp
//
//  Created by C on 16/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore:TaskStore
    @State var sheetModelViewPresented = false
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(taskStore.tasks){task in
                        Text(task.name)
                    }
                .onDelete { (IndexSet) in
                    self.taskStore.tasks.remove(atOffsets: IndexSet)
                }
      
                .onMove { (IndexSet, Int) in
                    self.taskStore.tasks.move(fromOffsets: IndexSet, toOffset: Int)
                }
            
            }
                
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: {
                    self.sheetModelViewPresented = true
                }) {
                    Image(systemName: "plus")
                }
            )
                .sheet(isPresented: $sheetModelViewPresented) {
                    NewTaskView(taskStore: self.taskStore)

            }

                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
