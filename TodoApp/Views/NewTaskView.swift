//
//  NewTaskView.swift
//  TodoApp
//
//  Created by C on 17/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @State var taskinput = ""
    var body: some View {
      TextField("Task Name", text: $taskinput)
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
