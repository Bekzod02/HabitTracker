//
//  Habit.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 26/03/25.
//

import Foundation

struct Habit: Identifiable {
    let id: UUID
    var title: String
    var color: String
    var icon: String
    var goal: Int
}
