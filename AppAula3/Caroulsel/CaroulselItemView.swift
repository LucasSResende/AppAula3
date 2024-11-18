//
//  CaroulselItemView.swift
//  AppAula3
//
//  Created by user269368 on 09/11/24.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: ServiceType
    var body: some View {
        Image(banner.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .frame(width: 300)
            .tabViewStyle(.page(indexDisplayMode: .always))
    }
}
#Preview {
    CarouselItemView(banner: ServiceType(id: 1, nome: "", imagem:"motivacional1"))
}
