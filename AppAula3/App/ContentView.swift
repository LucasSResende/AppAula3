//
//  ContentView.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var userManager = UserManager(
        users: userMock,
        currentUser: userMock.first!
    )

    var body: some View {
        VStack {
            NavigationBar(userManager: userManager)
            FeaturesGrid()
            CarouselTabView()
            GoalContainer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
