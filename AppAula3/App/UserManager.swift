//
//  UserManager.swift
//  AppAula3
//
//  Created by user269368 on 21/11/24.
//

import SwiftUI

class UserManager: ObservableObject {
    @Published var currentUser: UserModel
    @Published var users: [UserModel]

    init(users: [UserModel], currentUser: UserModel) {
        self.users = users
        self.currentUser = currentUser
    }
}
