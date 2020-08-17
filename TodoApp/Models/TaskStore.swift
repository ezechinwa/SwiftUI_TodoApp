//
//  TaskStore.swift
//  TodoApp
//
//  Created by C on 16/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//

class TaskStore {
    
    var tasks:[Task] = [
      "Watch Netflix",
      "Play video games",
      "Study for an hour ",
      "Go to the supermarket",
      "Work of Projects",
      "Get some sleep",
      "Prepare food",
      "Work on your reports",
      "Watch Youtube"
        ].map{Task(name: $0)}
}

