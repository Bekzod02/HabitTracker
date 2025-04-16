//
//  HabitLocalStorage.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 26/03/25.
//

import Foundation

class HabitLocalStorage: HabitRepository {
    private let key = "saved_habits"

    func fetchHabits() -> [Habit] {
        if let data = UserDefaults.standard.data(forKey: key) {
            return (try? JSONDecoder().decode([Habit].self, from: data)) ?? []
        }
        return []
    }
    
    func addHabit(_ habit: Habit) {
        var habits = fetchHabits()
        habits.append(habit)
        if let data = try? JSONEncoder().encode(habits) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    func deleteHabit(withId id: UUID) {
        var habits = fetchHabits().filter { $0.id != id }
        if let data = try? JSONEncoder().encode(habits) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    

}
