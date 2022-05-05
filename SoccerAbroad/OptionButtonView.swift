//
//  OptionButtonView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/02.
//

import SwiftUI

struct OptionButtonView: View {
    @State var tapOption: Bool = true
    
    var body: some View {
        Button(action: {
            self.tapOption.toggle()
            
        }) {
            Image(systemName: tapOption ? "square" : "checkmark.square.fill")
                .foregroundColor(.TabBarColor)

        }
    }
}

struct OptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonView()
    }
}
