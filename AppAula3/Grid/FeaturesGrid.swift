//
//  FeaturesGrid.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct FeaturesGrid: View {
    var gridLayout: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: 2)
    }
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridLayout) {
                ForEach(servicesMock) { service in
                    FeatureType(service: service)
                }
            }
            .frame(height: 250)
            .padding(.horizontal, 15)
            .padding(.top, 15)
        }
    }
}
    
#Preview {
    FeaturesGrid()
}
