//
//  WordGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/07.
//

import SwiftUI

struct WordGameView: View {
    
    @EnvironmentObject var checkAnswer: WordAnswer
    @EnvironmentObject var wordGame: AlphabetAnswer
    @State var answerText: String = ""
    var brailles = ["a", "p", "p", "l", "e"] // 디코딩한 값으로 변경필요
    var randomIndex = 0
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(0..<wordData[checkAnswer.wordRandomIndex].wordID.count, id: \.self) { value in
                    
                    let char = alphabetData[wordData[checkAnswer.wordRandomIndex].wordID[value]]
                    
                    AlphabetView(alphabet: char, circleCheck: char.braille)
                    
                }
            }
            
            
            TextField("What is word?", text: $answerText)
                .padding()
            
            
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
            
            
        }
        .onAppear {
            wordGame.wordGame = true
        }
    }
    
}
