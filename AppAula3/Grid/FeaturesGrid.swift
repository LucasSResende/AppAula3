//
//  FeaturesGrid.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct FeaturesGrid: View {
    var gridLayout: [GridItem]{
    return Array(repeating: GridItem(.flexible()), count: 2)
    }
    let services = ["Exercitar", "Meditar", "Alongamento", "Coffee Time","Pausade 5 min", "Hora do cochilo", "Frasemotivacional"]
    var body: some View {
        LazyHGrid(rows: gridLayout){
            ForEach(servicesMock){
                service in FeatureType(service: service)
            }
        }.frame(height: 200).padding(.horizontal, 15).padding(.top,15)
    }
}
    
#Preview {
    FeaturesGrid()
}
