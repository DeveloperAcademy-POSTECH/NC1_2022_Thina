//
//  MatchBannerView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/02.
//

import SwiftUI

struct MatchBannerView: View {
//    var LiveArray: [String] = ["Man City : Liverpool", "Chelsea : Arsenal", "Tottenham : Man United", "West Ham : Wolves", "Newcastle : Leicester", "Brighton : Brentford", "Southampton : Crystal Palace", "Aston Villa : Leeds"]
    
    var body: some View {
        TabView {
            ForEach(1...8, id: \.self) { i in
                ZStack(alignment: .bottom) {
                    Image("Live\(i)")
                        .resizable()
                        .frame(height: 240)
                    
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.000001), Color.black]), startPoint: .top, endPoint: .bottom)
                        .frame(width: 390, height: 240)
                    
//                    VStack {
//                        Text(LiveArray[i-1])
//                            .foregroundColor(.BackgroundColor)
//                            .fontWeight(.bold)
//                    }
//                    .padding()

                }
            }
        }
        .tabViewStyle(.page)
    }
}

struct MatchBannerView_Previews: PreviewProvider {
    static var previews: some View {
        MatchBannerView()
    }
}
