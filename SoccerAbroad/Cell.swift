//
//  Cell.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/04.
//

import SwiftUI

struct Cell: View {
    let teamInfo: PremierTable
    
    var body: some View {
        HStack {
            Group {
                Text("\(teamInfo.rank)")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                Image("\(teamInfo.teamImage)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                Text("\(teamInfo.teamName)")
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Group {
                Text("\(teamInfo.played)")
                Text("\(teamInfo.win)")
                Text("\(teamInfo.drawn)")
                Text("\(teamInfo.lost)")
                Text("\(teamInfo.gfa)")
                Text("\(teamInfo.gd)")
                Text("\(teamInfo.point)")
            }
            .font(.system(size: 12))
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
//        Cell(rank: <#T##Int#>, imageName: <#T##String#>, teamName: <#T##String#>, played: <#T##Int#>, win: <#T##Int#>, drawn: <#T##Int#>, lost: <#T##Int#>, gfa: <#T##Int#>, gd: <#T##Int#>, point: <#T##Int#>)
        PremierTableView()
    }
}
