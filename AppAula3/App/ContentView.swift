//
//  ContentView.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var goals: [GoalType] = []
    @State private var isLoading: Bool = true
    @State private var showError: Bool = false
    @State private var showAddGoalModal: Bool = false

    var body: some View {
        VStack(spacing: 15) {
            NavigationBar()
                .padding(.horizontal, 15)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    FeaturesGrid()
                    CarouselTabView()

                    Button(action: {
                        showAddGoalModal.toggle()
                    }) {
                        HStack {
                            Spacer()
                            Text("Adicionar Nova Meta")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    .sheet(isPresented: $showAddGoalModal) {
                        AddGoalView(goals: $goals)
                    }

                    if isLoading {
                        ProgressView("Carregando metas...")
                            .padding()
                    } else {
                        GoalContainer(goals: $goals)
                    }
                }
            }
        }
        .onAppear(perform: fetchGoals)
        .alert("Erro", isPresented: $showError) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Não foi possível carregar as metas. Tente novamente mais tarde.")
        }
    }

    private func fetchGoals() {
        APIService().getGoals { goals, error in
            if let error = error {
                print("Erro ao carregar metas: \(error)")
                showError = true
            } else {
                self.goals = goals ?? []
            }
            isLoading = false
        }
    }
}

#Preview {
    ContentView()
}

