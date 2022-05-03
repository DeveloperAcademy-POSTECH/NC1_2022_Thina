//
//  ContentView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var MenuIsTab: Bool = false
    @State var menuColor: Color = Color.black
    
    var body: some View {
        TabView {
            MatchView()
                .tabItem {
                    Image("MatchIcon").renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 20)
                        .onTapGesture {
                            if MenuIsTab == false {
                                menuColor = Color.green
                                MenuIsTab = true
                            }
                        }
                        

                    Text("Matches")

                }

            TransferView2()
                .tabItem {
                    Image("LeagueIcon").renderingMode(.template)

                    Text("Leagues")

                }

            TransferView()
                .tabItem {
                    Image("TransferIcon").renderingMode(.template)
                    Text("Transfers")
                }

        }
        .accentColor(.TabBarColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
