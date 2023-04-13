//
//  DictionaryView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/03.
//

import SwiftUI

struct DictionaryView: View {
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        HStack {
            NavigationView {
                VStack {                    
                    List(gameManager.alphabetData, id: \.id) { alphabet in
                        NavigationLink("\(alphabet.charactor)", destination: AlphabetView(alphabet: alphabet, circleCheck: alphabet.braille))
                    }
                    .listStyle(.inset)
                }
                .navigationTitle("Dictionary")
                AlphabetView(alphabet: gameManager.alphabetData[0], circleCheck: gameManager.alphabetData[0].braille)
            }
            .onAppear {
                gameManager.isWordGame = false
            }
        }
    }
}
