//
//  OptionView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct OptionView: View {
    var optionLeague: [String: Int] = ["Premier League": 115, "BUNDESLIGA": 105, "LaLiga": 70, "SERIE A": 75, "Champions League": 130, "Europa League": 110]
    
    var optionPeriod: [Int] = [3, 6, 12, 36]
    
    var body: some View {
        
        let keys = optionLeague.map {$0.key}
        let values = optionLeague.map {$0.value}
        VStack {
            HStack {
                Text("League")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
            .padding()
            
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(0...5, id: \.self) { i in
                            OptionCapsule(value: CGFloat(values[i]), name: keys[i])
                            
                        }
                    }
                    .frame(height: 50)
                }
                
            }
            .padding()
            
            HStack {
                Text("Period")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
            .padding()
            
            VStack(alignment: .leading) {
                ForEach(optionPeriod, id: \.self) { index in
                    OptionPeriod(num: index)
                    
                }
                
            }
            
            HStack {
                Text("Market Value")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
            .padding()
            
            MarketValueView()
            
            Spacer()
            
            HStack {
                Button(action: {

                    
                }) {
                    Text("Close")
                        .foregroundColor(.FontColor)
                    
                }
                
                Spacer()
                
                Button(action: {

                    
                }) {
                    Text("Apply")
                        .foregroundColor(.TabBarColor)
                    
                }
                
            }
            .padding(.horizontal, 80)
            
        }
        .padding(.vertical, 25)
        
    }
}

struct OptionCapsule: View {
    var value: CGFloat
    var name: String
    
    var body: some View {
        Capsule()
            .foregroundColor(.BackgroundColor)
            .frame(width: value, height: 35)
            .overlay(Text(name).font(.system(size: 12)))
        
    }
}

struct OptionPeriod: View {
//    var num: CGFloat
    var num: Int
    
    var body: some View {
        HStack {
            OptionButtonView()
            
            Text("\(num) months ago")
            
            Spacer()
            
        }
        .padding()
        
    }
}


struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView()
    }
}
