//
//  AlphabetGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetGameView: View {
    
    @State var tabBool = true
    var randomIndex: Int = Int.random(in: 0..<alphabetData.count)
    
    var body: some View {
        VStack {
            
            Spacer()
            
            AlphabetView(alphabet: alphabetData[randomIndex], viewTab: true)
            
            HStack {
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("CLEAR")
                        .padding(.horizontal, 48)
                        .padding(.vertical, 24)
                        .font(.system(.title2).bold())
                        .foregroundColor(.red)
                        .background(.selection)
                        .cornerRadius(50)
                        .padding(.vertical, 24)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("DONE")
                        .padding(.horizontal, 48)
                        .padding(.vertical, 24)
                        .font(.system(.title2).bold())
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(50)
                        .padding(.vertical, 24)
                }
                
                Spacer()
                
            }
            
        }
        
    }
}
