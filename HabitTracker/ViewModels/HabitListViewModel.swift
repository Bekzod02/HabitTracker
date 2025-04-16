//
//  HabitListViewModel.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 16/04/25.
//

import Foundation

final class HabitListViewModel: ObservableObject {
    @Published private(set) var habits: [Habit] = []
    private let repository: HabitRepository

    init(repository: HabitRepository = HabitLocalStorage()) {
        self.repository = repository
        loadHabits()
    }

    private func loadHabits() {
        habits = repository.fetchHabits()
    }

    func addHabit(title: String, color: String, icon: String, goal: Int) {
        let newHabit = Habit(title: title, color: color, icon: icon, goal: goal)
        repository.addHabit(newHabit)
        loadHabits()
    }

    func deleteHabit(_ habit: Habit) {
        repository.deleteHabit(withId: habit.id)
        loadHabits()
    }
}
