//
//  GoalContainer.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct GoalContainer: View {
    @Binding var goals: [GoalType]

    var body: some View {
        if goals.isEmpty {
            Text("Nenhuma meta disponível.")
                .font(.headline)
                .padding()
        } else {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(goals) { goal in
                        GoalListView(goal: goal)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    GoalContainer(goals: .constant(goalMock))
}


