//
//  NavigationBar.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct NavigationBar: View {
    @ObservedObject var userManager: UserManager
    @State private var showAddUserModal: Bool = false

    var body: some View {
        HStack {
            // Dropdown para selecionar o usuário
            Menu {
                ForEach(userManager.users) { user in
                    Button(user.nome) {
                        userManager.currentUser = user
                    }
                }
            } label: {
                Text(userManager.currentUser.nome)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            // Botão para adicionar usuários
            Button(action: {
                showAddUserModal.toggle()
            }) {
                Image(systemName: "plus.circle.fill")
            }
            .font(.title2)
            .foregroundStyle(.gray)
            .sheet(isPresented: $showAddUserModal) {
                AddUserView(users: $userManager.users)
            }
        }
        .padding()
    }
}

#Preview {
    NavigationBar(userManager: UserManager(
        users: userMock,
        currentUser: userMock.first!
    ))
}
