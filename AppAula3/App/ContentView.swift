//
//  ContentView.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex: Int = 0
    let totalItems = goalMock.count // Total de itens no scroll
    @State private var timer: Timer?

    var body: some View {
        ScrollView {
            VStack {
                NavigationBar()
                FeaturesGrid()
                CarouselTabView()
                GoalContainer()
                UserProfileView()
            }
            .padding()
        }
        .onAppear {
            startAutoScroll()
        }
        .onDisappear {
            stopAutoScroll()
        }
    }

    private func startAutoScroll() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % totalItems
            }
        }
    }

    private func stopAutoScroll() {
        timer?.invalidate()
        timer = nil
    }
}


#Preview {
    ContentView()
}
