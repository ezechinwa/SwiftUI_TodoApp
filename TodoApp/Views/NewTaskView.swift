//
//  NewTaskView.swift
//  TodoApp
//
//  Created by C on 17/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore : TaskStore
    @Environment(\.presentationMode) var presentationMode
    @State var taskinput = ""
    var body: some View {
        Form{
              TextField("Task Name", text: $taskinput)
            Button("Add"){
                self.taskStore.tasks.append(Task(name: self.taskinput))
                self.presentationMode.wrappedValue.dismiss()
                
            }.disabled(taskinput.isEmpty)
        }
    
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
