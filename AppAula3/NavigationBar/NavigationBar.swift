//
//  NavigationBar.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Button("Lucas") {
            }
            .font(.headline)
            .fontWeight(.bold)
            Button(action: {}){
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    NavigationBar()
}
