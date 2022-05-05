//
//  PremierTableView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/04.
//

import SwiftUI

struct PremierTableView: View {
    let teams: [PremierTable] = [
                                PremierTable(rank: 1, teamImage: "Man City", teamName: "Man City", played: 34, win: 26, drawn: 5, lost: 3, gfa: "84-21", gd: 63, point: 83),
                                PremierTable(rank: 2, teamImage: "Liverpool", teamName: "Liverpool", played: 34, win: 25, drawn: 7, lost: 2, gfa: "86-22", gd: 64, point: 82),
                                PremierTable(rank: 3, teamImage: "Chelsea", teamName: "Chelsea", played: 34, win: 19, drawn: 9, lost: 6, gfa: "68-29", gd: 39, point: 66),
                                PremierTable(rank: 4, teamImage: "Arsenal", teamName: "Arsenal", played: 34, win: 20, drawn: 3, lost: 11, gfa: "54-41", gd: 20, point: 63),
                                PremierTable(rank: 5, teamImage: "Tottenham", teamName: "Tottenham", played: 34, win: 19, drawn: 4, lost: 11, gfa: "59-39", gd: 20, point: 61),
                                PremierTable(rank: 6, teamImage: "Man United", teamName: "Man United", played: 36, win: 16, drawn: 10, lost: 10, gfa: "57-52", gd: 5, point: 58),
                                PremierTable(rank: 7, teamImage: "Westham", teamName: "West Ham", played: 35, win: 15, drawn: 7, lost: 13, gfa: "53-46", gd: 7, point: 52),
                                PremierTable(rank: 8, teamImage: "Wolverhampton", teamName: "Wolves", played: 34, win: 15, drawn: 4, lost: 15, gfa: "33-32", gd: 1, point: 49),
                                PremierTable(rank: 9, teamImage: "Brighton", teamName: "Brighton", played: 35, win: 10, drawn: 14, lost: 11, gfa: "34-42", gd: -8, point: 44),
                                PremierTable(rank: 10, teamImage: "Newcastle", teamName: "Newcastle", played: 35, win: 11, drawn: 10, lost: 14, gfa: "40-56", gd: -16, point: 43),
                                PremierTable(rank: 11, teamImage: "Leicester", teamName: "Leicester", played: 33, win: 11, drawn: 9, lost: 13, gfa: "48-54", gd: -6, point: 42),
                                PremierTable(rank: 12, teamImage: "Crystal Palace", teamName: "Crystal Palace", played: 34, win: 9, drawn: 14, lost: 11, gfa: "45-42", gd: 3, point: 41),
                                PremierTable(rank: 13, teamImage: "Aston Villa", teamName: "Aston Villa", played: 33, win: 12, drawn: 4, lost: 17, gfa: "44-45", gd: -2, point: 40),
                                PremierTable(rank: 14, teamImage: "Brentford", teamName: "Brentford", played: 35, win: 11, drawn: 7, lost: 17, gfa: "41-52", gd: -11, point: 40),
                                PremierTable(rank: 15, teamImage: "Southampton", teamName: "Southampton", played: 35, win: 9, drawn: 13, lost: 13, gfa: "41-58", gd: -17, point: 40),
                                PremierTable(rank: 16, teamImage: "Burnley", teamName: "Burnley", played: 34, win: 7, drawn: 13, lost: 14, gfa: "31-46", gd: -15, point: 34),
                                PremierTable(rank: 17, teamImage: "Leeds United", teamName: "Leeds", played: 34, win: 8, drawn: 10, lost: 16, gfa: "38-72", gd: -34, point: 34),
                                PremierTable(rank: 18, teamImage: "Everton", teamName: "Everton", played: 33, win: 9, drawn: 5, lost: 19, gfa: "35-55", gd: -20, point: 32),
                                PremierTable(rank: 19, teamImage: "Watford", teamName: "Watford", played: 34, win: 6, drawn: 4, lost: 24, gfa: "32-69", gd: -37, point: 22),
                                PremierTable(rank: 20, teamImage: "Norwich City", teamName: "Norwich", played: 34, win: 5, drawn: 6, lost: 23, gfa: "22-71", gd: -49, point: 21)
                                ]
    
    var body: some View {
        
        VStack {
            HStack(spacing: 10) {
                Image("League1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)

                Text("Premier League").font(.title2).fontWeight(.semibold)
                
                
            }
            List {
                ForEach(teams) { team in
                    Cell(teamInfo: team)
                }
            }

        }
        .navigationBarTitleDisplayMode(.inline)  // navigation타이틀을 inline 모드로 바꿔 위에 생기는 빈 공간을 없앰.
        
    }
}



struct PremierTableView_Previews: PreviewProvider {
    static var previews: some View {
        PremierTableView()
    }
}
