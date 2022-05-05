//
//  MarketValueView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/02.
//

import SwiftUI
import UIKit

struct MarketValueView: View {
    @State var cost: Double = 0
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Slider(value: $cost, in: 0...300, step: 10).accentColor(.TabBarColor)
                    
                }
                .padding()
                
                HStack {
                    Spacer()
                    
                    Text("0M ~ \(cost, specifier: "%.f")M")
                    
                }
                .padding(.horizontal, 50)
                
            }
        }
    }
}

struct MarketValueView_Previews: PreviewProvider {
    static var previews: some View {
        MarketValueView()
    }
}
