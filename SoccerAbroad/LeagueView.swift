//
//  LeagueView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/03.
//

import SwiftUI

struct LeagueView: View {
    
    let leagues: [League] = [
        League(imageName: "League1", leagueName: "Premier League"),
        League(imageName: "League2", leagueName: "SERIE A"),
        League(imageName: "League3", leagueName: "LaLiga"),
        League(imageName: "League4", leagueName: "BUNDESLIGA")
    ]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Following"), content: {
                    ForEach(0..<2, id: \.self) { i in
                        NavigationLink(destination: PremierTableView()) {
                            LeagueTitles(images: leagues[i].imageName, names: leagues[i].leagueName)
                            
                        }
                        
                    }
                })
                
                Section(header: Text("Recommendation"), content: {
                    ForEach(2..<4, id: \.self) { i in
                        NavigationLink(destination: PremierTableView()) {
                            LeagueTitles(images: leagues[i].imageName, names: leagues[i].leagueName)
                            
                        }
                        
                    }
                })
            }
            .navigationTitle("League")
        }
        
        
//        VStack {
//            ZStack {
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(.FontColor)
//                    .frame(width: 370, height: 60)
//                    .overlay(RoundedRectangle(cornerRadius: 10).foregroundColor(.BackgroundColor).frame(width: 368, height: 58))
//
//                HStack {
//
//
//                    Text("Premier League")
//                }
//            }
//        }
    }
}

struct League {
    let imageName: String
    let leagueName: String
}

struct LeagueTitles: View {
    var images: String
    var names: String
    
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.MainColor)
                    .frame(width: 45, height: 45)
                
                Image(images)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                
            }
            Text(names)
            
        }
    }
}

struct LeagueView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueView()
    }
}
