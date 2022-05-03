//
//  MatchView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct MatchView: View {
    var body: some View {
        VStack {
            Image("MainLogo")
                .resizable()
                .scaledToFit()  // 이미지 비율 고정
                .frame(width: 130)
            
            ScrollView {
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(height: 100)
                            .foregroundColor(Color.gray)
                        
                    }
                    HStack {
                        Text("Live")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    MatchBannerView()
                    
                    HStack {
                        Text("Premier League")
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    PremierMainView()
                    
                    
                }
            }
            
        }
        .padding()
        
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
