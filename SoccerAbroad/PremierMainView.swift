//
//  PremierMainView.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/05/03.
//

import SwiftUI

struct PremierMainView: View {
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

struct PremierMainView_Previews: PreviewProvider {
    static var previews: some View {
        PremierMainView()
    }
}
