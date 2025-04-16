//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 16/04/25.
//

import SwiftUI

struct HabitDetailView: View {
    let habit: Habit

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: habit.icon)
                .font(.system(size: 64))
                .foregroundColor(.white)

            Text(habit.title)
                .font(.largeTitle)

            Text("Goal: \(habit.goal)x per week")
                .font(.title2)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .navigationTitle("Habit Detail")
    }
}
