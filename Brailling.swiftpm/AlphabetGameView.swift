//
//  AlphabetGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetGameView: View {
    
    @EnvironmentObject var alphabetGame: GameManager
    @State var showingAlert = false
    @State var checkBraille = [false, false, false, false, false, false]
    
    var body: some View {
        VStack {
            
            Spacer()
            
            AlphabetView(alphabet: alphabetData[alphabetGame.alphabetRandomIndex], viewTab: true)
            
            Button {
                if alphabetGame.answer == alphabetData[alphabetGame.alphabetRandomIndex].braille {
                    alphabetGame.doneCheck = true
                    alphabetGame.alphabetShuffle()
                    // Answer Sound
                } else {
                    showingAlert = true
                    // Wrong Sound
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
        .onAppear {
            alphabetGame.isWordGame = false
        }
        
    }
    
}

