//
//  WordGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/07.
//

import SwiftUI

struct WordGameView: View {
    
    @EnvironmentObject var wordGame: WordAnswer
    @EnvironmentObject var alphabetGame: AlphabetAnswer
    @State var answerText: String = ""
    @State var showingAlert = false
    @State var alphabetList: [Alphabet] = []
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(alphabetList, id: \.self) { char in
                    
                    AlphabetView(alphabet: char, circleCheck: char.braille)

                }
            }.padding(.top)
            
            
            TextField("Typing here", text: $answerText)
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .font(.largeTitle)
                
            
            Button {
                if answerText.lowercased() == wordData[wordGame.wordRandomIndex].answer {
                    
                    alphabetList = []
                    wordGame.wordShuffle()
                    
                    for i in 0..<wordData[wordGame.wordRandomIndex].wordID.count {
                        let char = alphabetData[wordData[wordGame.wordRandomIndex].wordID[i]]
                        alphabetList.append(char)
                    }
                    
                    answerText = ""
                    
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
            alphabetGame.isWordGame = true
            for i in 0..<wordData[wordGame.wordRandomIndex].wordID.count {
                let char = alphabetData[wordData[wordGame.wordRandomIndex].wordID[i]]
                alphabetList.append(char)
            }

        }
        .onDisappear {
            alphabetGame.isWordGame = false
        }
    }
    
}
