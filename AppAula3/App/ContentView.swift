//
//  ContentView.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationBar().padding(.horizontal,15)
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    FeaturesGrid()
                    CarouselTabView()
                    GoalContainer()
                }}
        }
    }
}

#Preview {
    ContentView()
}
