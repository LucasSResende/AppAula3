//
//  CarouselTabView.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

import SwiftUI

struct CarouselTabView: View {
    @State private var currentIndex: Int = 0
    @State private var timer: Timer? = nil
    let bannerList: [ServiceType] = [
        ServiceType(id: 1, nome: "", imagem: "motivacional1"),
        ServiceType(id: 2, nome: "", imagem: "motivacional2"),
        ServiceType(id: 3, nome: "", imagem: "motivacional3")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(bannerList.indices, id: \.self) { index in
                CarouselItemView(banner: bannerList[index])
                    .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear(perform: startAutoScroll)
        .onDisappear(perform: stopAutoScroll)
        .frame(height: 250)
    }
    
    private func startAutoScroll() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % bannerList.count
            }
        }
    }
    
    private func stopAutoScroll() {
        timer?.invalidate()
        timer = nil
    }
}

#Preview {
CarouselTabView()
}
