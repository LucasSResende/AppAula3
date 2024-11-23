//
//  NavigationBar.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct NavigationBar: View {
    @State private var users: [UserModel] = userMock
    @State private var currentUser: UserModel = userMock.first!
    @State private var showAddUserModal: Bool = false
    
    var body: some View {
        HStack {
            Menu {
                ForEach(users) { user in
                    Button(user.nome) {
                        currentUser = user
                    }
                }
            } label: {
                Text(currentUser.nome)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            Button(action: {
                showAddUserModal.toggle()
            }) {
                Image(systemName: "plus.circle.fill")
            }
            .font(.title2)
            .foregroundStyle(.gray)
            .sheet(isPresented: $showAddUserModal) {
                AddUserView(users: $users)
            }
        }
        .padding()
    }
}

#Preview {
    NavigationBar()
}

