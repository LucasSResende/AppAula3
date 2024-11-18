//
//  UserProfileView.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct UserProfileView: View {
    @State private var users: [String] = ["Lucas", "Maria", "João"]
    @State private var newUser: String = ""
    @State private var selectedUser: String = "Lucas"

    var body: some View {
        VStack(alignment: .leading) {
            Text("Perfis").font(.headline)
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                        .onTapGesture {
                            selectedUser = user
                        }
                }
            }
            .listStyle(PlainListStyle())

            HStack {
                TextField("Novo Perfil", text: $newUser)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: addUser) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            Text("Perfil Atual: \(selectedUser)").font(.headline)
        }
        .padding()
    }

    private func addUser() {
        guard !newUser.isEmpty else { return }
        users.append(newUser)
        newUser = ""
    }
}

#Preview {
    UserProfileView()
}
