//
//  AlphabetGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetGameView: View {
    
    @EnvironmentObject var checkAnswer: AlphabetAnswer
    @State var tabBool = true
    @State var showingAlert = false
    var randomIndex: Int = Int.random(in: 0..<alphabetData.count)
    
    
    var body: some View {
        VStack {
            
            Spacer()
            
            AlphabetView(alphabet: alphabetData[randomIndex], viewTab: true)
            
            Button {
                if checkAnswer.answer == alphabetData[randomIndex].braille {
                    print("맞았습니다")
                } else {
                    showingAlert = true
                }
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
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("OOOPS!"),
                      message: Text("You can do it! Please try again"),
                      dismissButton: .default(Text("RETURN")))
            }
            
            
        }
        
    }
    
}

