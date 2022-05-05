//
//  PracButton.swift
//  SoccerAbroad
//
//  Created by 유정인 on 2022/04/29.
//

import SwiftUI

struct TransferView: View {
    
    let data = Array(1...10).map { "이적 \($0)"}
    
    let columns = [
        GridItem()
    ]
    
    @State private var showOption = false
    
    var body: some View {
        ZStack {
//            Rectangle()
//                .foregroundColor(.BackgroundColor)
//                .ignoresSafeArea()
            
            Color.BackgroundColor.ignoresSafeArea()
            
            VStack(spacing: 2) {
                ZStack {
                        Rectangle()
                            .foregroundColor(.MainColor)
                            .ignoresSafeArea()
                            .frame(height: 60)
                            .shadow(radius: 1, y: 1)
                        
                        HStack {
                            Text("Transfer")
                                .fontWeight(.heavy)
                                .font(.system(size: 30))
                                
                            
                            Spacer()
                            
                            Button(action: {
                                self.showOption.toggle()
                                
                            }){
                                Image(systemName: "slider.horizontal.3")
                                    .resizable()
                                    .frame(width: 20, height: 18)
                                    .foregroundColor(.FontColor)
                                
                            }
                            .sheet(isPresented: $showOption) {
                                OptionView()
                                
                            }
                        }
                        .padding(.horizontal, 40)
                        
                }
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 25) {
                        ForEach(data, id: \.self) { i in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color.white)
                                    .frame(width: 350, height: 270)
                                    .shadow(radius: 2)

                                Text(i)

                            }
                        }
                    }
                    .padding(.horizontal)

                }
                
            }
        }
    }
}


struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}
