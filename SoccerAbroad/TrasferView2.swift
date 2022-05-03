//
//  TransferV.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct TransferView2: View {
    
    let data = Array(1...10).map { "이적 \($0)"}
    
    let columns = [
        GridItem()
    ]
    
    @State private var showOption = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Rectangle()
                        .foregroundColor(.BackgroundColor)
                        .ignoresSafeArea()
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { i in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color.white)
                                    .frame(height: 300)
                                    .shadow(radius: 2)
                
                                Text(i)
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                }

            }
            .navigationBarTitle(Text("Transfer"))
        }
    }
}

struct TransferView2_Previews: PreviewProvider {
    static var previews: some View {
        TransferView2()
    }
}
