//
//  FeatureType.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct FeatureType: View {
    let service: ServiceType
    var body: some View {
        VStack {
            Image(service.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            Text(service.nome)
        }
        .frame(width: 80, height: 80)
    }
}

#Preview {
    FeatureType(service: ServiceType(id: 1, nome: "Exercitar", imagem: "exercicio"))
}
