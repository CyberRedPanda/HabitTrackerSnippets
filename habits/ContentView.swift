//
//  ContentView.swift
//  habits
//
//  Created by User23198271 on 7/11/20.
//  Copyright © 2020 Bryan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var newHabitView = false
    @ObservedObject var habitList = HabitList()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(habitList.listOfHabits) { habit in
                    NavigationLink(destination: detailView()) {
                        Text(habit.habit_var)
                    }
                }
            }
            .sheet(isPresented: $newHabitView) {
                AddHabit(habitList: self.habitList)
        }
        .navigationBarTitle("Habits!")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                self.newHabitView = true
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
