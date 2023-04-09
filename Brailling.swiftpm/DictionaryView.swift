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
                    Text("Various brailles here")
                        .padding()
                    
                    List(alphabetData, id: \.id) { alphabet in
                        NavigationLink("\(alphabet.charactor)", destination: AlphabetView(alphabet: alphabet, circleCheck: alphabet.braille))
                    }
                    .listStyle(.inset)
                }
                .navigationTitle("Dictionary")
                AlphabetView(alphabet: alphabetData[0], circleCheck: alphabetData[0].braille)
            }
            .onAppear {
                gameManager.isWordGame = false
            }
        }
    }
}
