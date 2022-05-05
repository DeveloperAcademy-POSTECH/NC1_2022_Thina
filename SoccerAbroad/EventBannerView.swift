//
//  EventBanner.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct EventBannerView: View {
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    @State private var currentIndex = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(1...4, id: \.self) {i in
                Image("Banner\(i)")
                    .resizable()
                    .frame(width: 380, height: 100)
                    .tag(i)
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer, perform: { _ in
            withAnimation {
            currentIndex = currentIndex < 4 ? currentIndex + 1 : 0
            
            }
        })
    }
}

struct EventBannerView_Previews: PreviewProvider {
    static var previews: some View {
        EventBannerView()
    }
}
