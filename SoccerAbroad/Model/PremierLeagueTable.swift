//
//  PremierLeagueTable.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/04.
//

import Foundation
import SwiftUI

struct PremierTable: Identifiable {
    let id = UUID()
    let rank: Int
    let teamImage: String
    let teamName: String
    let played: Int
    let win: Int
    let drawn: Int
    let lost: Int
    let gfa: String
    let gd: Int
    let point: Int
    
}
