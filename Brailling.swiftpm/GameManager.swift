//
//  AlphabetAnswerData.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/06.
//

import Foundation

class GameManager: ObservableObject {
    let alphabetData: [Alphabet]
    let wordData: [Word]
    
    @Published var alphabetRandomIndex = Int.random(in: 0..<26)
    @Published var answer: [Bool] = [false, false, false, false, false, false]
    @Published var doneCheck = false
    @Published var isWordGame = true
    @Published var wordRandomIndex: Int
    
    init() {
        self.alphabetData = load("DictionaryData.json")
        self.wordData = load("WordData.json")
        self.wordRandomIndex = Int.random(in: 0..<wordData.count)
    }
    
    func alphabetShuffle() {
        alphabetRandomIndex = Int.random(in: 0..<26)
    }

    func wordShuffle() {
        wordRandomIndex = Int.random(in: 0..<wordData.count)
    }
}
