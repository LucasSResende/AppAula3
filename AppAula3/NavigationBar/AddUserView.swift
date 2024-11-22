//
//  AddUserView.swift
//  AppAula3
//
//  Created by user269368 on 21/11/24.
//

import SwiftUI

struct AddUserView: View {
    @Binding var users: [UserModel]
    @Environment(\.dismiss) var dismiss
    @State private var newUserName: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Novo Usuário")) {
                    TextField("Nome do Usuário", text: $newUserName)
                }
                
                Button(action: {
                    guard !newUserName.isEmpty else { return } 
                    let newUser = UserModel(id: users.count + 1, nome: newUserName)
                    users.append(newUser)
                    dismiss()
                }) {
                    Text("Adicionar")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Adicionar Usuário")
            .navigationBarItems(leading: Button("Cancelar") {
                dismiss()
            })
        }
    }
}

#Preview {
    AddUserView(users: .constant(userMock))
}

