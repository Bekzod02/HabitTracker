//
//  HabitListView.swift
//  HabitTracker
//
//  Created by Bekzod Khaitboev on 26/03/25.
//

import SwiftUI

struct HabitListView: View {

    @StateObject private var viewModel = HabitListViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.habits) { habit in
                    NavigationLink {
                        HabitDetailView(habit: habit) // Placeholder
                    } label: {
                        HabitRowView(habit: habit)
                    }
                }
                .onDelete { indexSet in
                    indexSet.forEach { index in
                        viewModel.deleteHabit(viewModel.habits[index])
                    }
                }
            }
            .navigationTitle("My Habits")
            .toolbar {
                Button(action: {
                    viewModel.addHabit(title: "Read Book", color: "green", icon: "book.fill", goal: 4)
                }) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    HabitListView()
}
