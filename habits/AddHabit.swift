//
//  AddHabit.swift
//  habits
//
//  Created by User23198271 on 7/11/20.
//  Copyright © 2020 Bryan. All rights reserved.
//

import SwiftUI

struct AddHabit: View {
    @State var habit = ""
    @ObservedObject var habitList = HabitList()
    
    var body: some View {
        NavigationView {
            Form {
                TextField("add a habit", text: $habit)
                }
            .navigationBarTitle("Add a habit!")
            .navigationBarItems(leading: Button("save") {
                let item = Habit(habit_var: self.habit)
                self.habitList.listOfHabits.append(item)
            })
        }
    }
}

