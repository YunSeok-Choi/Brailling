//
//  WordGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/07.
//

import SwiftUI

struct WordGameView: View {
    
    @EnvironmentObject var wordGame: GameManager
    @State var answerText: String = ""
    @State var showingAlert = false
    @State var alphabetList: [Alphabet] = []
    let soundManager = SoundManager.sound
    
    var body: some View {
        VStack {
            
            HStack {
                ForEach(alphabetList, id: \.self) { char in
                    AlphabetView(alphabet: char, circleCheck: char.braille)
                }
            }
            .padding(.top)
            .animation(.easeInOut(duration: 0.3), value: alphabetList)
            
            TextField("Typing here", text: $answerText)
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .font(.largeTitle)
                .autocorrectionDisabled(true)
            
            Button {
                if answerText.lowercased() == wordGame.wordData[wordGame.wordRandomIndex].answer {
                    alphabetList = []
                    answerText = ""
                    
                    wordGame.wordShuffle()
                    initList()
                    soundManager.playSound(sound: .correct)
                } else {
                    showingAlert = true
                    soundManager.playSound(sound: .wrong)
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
            initList()
            wordGame.isWordGame = true
        }
    }
    
    func initList() {
        let words = wordGame.wordData[wordGame.wordRandomIndex]
        
        for i in 0..<words.wordID.count {
            let char = wordGame.alphabetData[words.wordID[i]]
            alphabetList.append(char)
        }
    }
    
}
