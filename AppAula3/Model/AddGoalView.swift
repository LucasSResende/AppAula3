//
//  AddGoalView.swift
//  AppAula3
//
//  Created by user269368 on 23/11/24.
//

import SwiftUI

struct AddGoalView: View {
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var icon: String = "leaf.fill"
    @State private var isSubmitting: Bool = false
    @Binding var goals: [GoalType]

    let icons = ["leaf.fill", "moon.zzz.fill", "heart.fill", "hare.fill", "book.fill"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Detalhes da Meta")) {
                    TextField("Título", text: $title)
                    TextField("Descrição", text: $description)
                    Picker("Ícone", selection: $icon) {
                        ForEach(icons, id: \.self) { icon in
                            HStack {
                                Image(systemName: icon)
                                Text(icon)
                            }
                        }
                    }
                }

                Button(action: addGoal) {
                    if isSubmitting {
                        ProgressView()
                    } else {
                        Text("Adicionar Meta")
                    }
                }
                .disabled(isSubmitting || title.isEmpty || description.isEmpty)
            }
            .navigationTitle("Nova Meta")
            .navigationBarItems(leading: Button("Cancelar") {
                dismiss()
            })
        }
    }

    private func addGoal() {
        isSubmitting = true
        let newGoal = GoalType(id: goals.count + 1, icone: icon, titulo: title, descricao: description)
        APIService().postGoal(newGoal) { success, error in
            isSubmitting = false
            if success {
                goals.append(newGoal)
                dismiss()
            } else {
                print("Erro ao adicionar meta: \(error?.localizedDescription ?? "Desconhecido")")
            }
        }
    }
}

#Preview {
    AddGoalView(goals: .constant([]))
}
