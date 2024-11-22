//
//  GoalContainer.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct GoalContainer: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(goalMock) { goal in
                    GoalListView(goal: goal)
                }
            }
        }
    }
}

#Preview {
    GoalContainer()
}
