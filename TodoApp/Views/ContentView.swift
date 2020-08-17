//
//  ContentView.swift
//  TodoApp
//
//  Created by C on 16/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    var taskStore:TaskStore
    @State var sheetModelViewPresented = false
    
    var body: some View {
        
        NavigationView {
            List(taskStore.tasks){task in
                Text(task.name)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing:
                Button(action: {
                    self.sheetModelViewPresented = true
                }) {
                    Image(systemName: "plus")
                }
            )
                .sheet(isPresented: $sheetModelViewPresented) {
                  NewTaskView()

            }

                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
