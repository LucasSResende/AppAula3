//
//  NavigationBar.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Carrossel com frases motivacionais
                MotivationalCarouselView()
                
                // Grid de atividades
                HabitGridView()
                
                Spacer()
                
                // Lista de hábitos registrados
                HabitListView()
            }
            .navigationTitle("Autocuidado")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

