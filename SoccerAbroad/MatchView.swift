//
//  MatchView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct MatchView: View {
    
    public var matchTitle: [String] = ["Premier League", "LaLiga", "BUNDESLIGA", "SERIE A"]
    
    var body: some View {
        VStack(spacing: 30) {
            Image("MainLogo")
                .resizable()
                .scaledToFit()  // 이미지 비율 고정
                .frame(width: 130)
            
            ScrollView {
                
                VStack(spacing: 15) {
                    EventBannerView()
                        .frame(height: 95)
                    
                    HStack {
                        Text("Live")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                    }
                    .padding()
                    
                }
  
                    MatchBannerView()
                       .frame(width: .infinity, height: 240, alignment: .center)

                
                ForEach(matchTitle, id: \.self) { i in
                    HStack {
                        Text("\(i)")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    LeagueViews()
                    
                }
            }
            
        }
        .padding()
        
    }
}

struct LeagueViews: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(1...10, id: \.self) { i in
                    Image("Premier\(i)")
                        .resizable()
                        .frame(width: 175, height: 130)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
            }
            .frame(height: 130)
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
