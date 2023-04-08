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
                List(alphabetData, id: \.id) { alphabet in
                    NavigationLink("\(alphabet.charactor)", destination: AlphabetView(alphabet: alphabet, circleCheck: alphabet.braille))
                }
            }
            .onAppear {
                gameManager.isWordGame = false
            }
        }
    }
}
