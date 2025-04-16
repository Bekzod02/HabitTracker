//
//  HabitRepository.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 26/03/25.
//

import Foundation

protocol HabitRepository {
    func fetchHabits() -> [Habit]
    func addHabit(_ habit: Habit)
    func deleteHabit(withId id: UUID)
}
