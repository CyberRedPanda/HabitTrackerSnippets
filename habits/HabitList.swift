//
//  HabitList.swift
//  habits
//
//  Created by User23198271 on 7/11/20.
//  Copyright © 2020 Bryan. All rights reserved.
//
import SwiftUI

struct Habit: Identifiable {
    let habit_var: String
    let id = UUID()
}

class HabitList: ObservableObject {
    @Published var listOfHabits = [Habit]()
}
