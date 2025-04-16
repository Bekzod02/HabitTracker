//
//  HabitRowView.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 16/04/25.
//

import SwiftUI

struct HabitRowView: View {
    let habit: Habit

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(Color(habit.color))
                    .frame(width: 40, height: 40)
                Image(systemName: habit.icon)
                    .foregroundColor(.white)
            }

            VStack(alignment: .leading) {
                Text(habit.title)
                    .font(.headline)

                Text("Goal: \(habit.goal)x/week")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding(.vertical, 12)
    }
}
