//
//  Task.swift
//  TodoApp
//
//  Created by C on 16/08/2020.
//  Copyright © 2020 Gistech. All rights reserved.
//
import Foundation

struct Task:Identifiable {
    let id:UUID = UUID()
    var name: String
    var completed: Bool = false
}
