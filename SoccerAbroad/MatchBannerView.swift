//
//  MatchBannerView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/02.
//

import SwiftUI

struct MatchBannerView: View {
    var LiveArray: [String] = ["Man City : Liverpool", "Chelsea : Arsenal", "Tottenham : Man United", "West Ham : Wolves", "Newcastle : Leicester", "Brighton : Brentford", "Southampton : Crystal Palace", "Aston Villa : Leeds"]
    
    var body: some View {
        TabView {
            ForEach(1...8, id: \.self) { i in
                ZStack(alignment: .bottom) {
                    Image("Live\(i)")
                        .resizable()
                        .frame(height: 240)
                 
                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                        .frame(width: 390, height: 110)
                    
                    VStack {
                        HStack {
                            Text(LiveArray[i-1])
                                .foregroundColor(.BackgroundColor)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal, 30)
                    }
                    .padding(.vertical, 35)

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

