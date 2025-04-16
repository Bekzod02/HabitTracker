//
//  Habit.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 26/03/25.
//

import Foundation

struct Habit: Identifiable, Codable {
    let id: UUID
    var title: String
    var color: String
    var icon: String
    var goal: Int

    init(id: UUID = UUID(), title: String, color: String, icon: String, goal: Int) {
        self.id = id
        self.title = title
        self.color = color
        self.icon = icon
        self.goal = goal
    }
}
