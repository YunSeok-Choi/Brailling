//
//  AlphabetAnswerData.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/06.
//

import Foundation

class AlphabetAnswer: ObservableObject {
    
    @Published var alphabetRandomIndex = Int.random(in: 0..<alphabetData.count)
    @Published var answer: [Bool] = [false, false, false, false, false, false]
    @Published var doneCheck = false
    @Published var isWordGame = false
    
    func alphabetShuffle() {
        alphabetRandomIndex = Int.random(in: 0..<alphabetData.count)
    }
    
}

class WordAnswer: ObservableObject {
    
    @Published var wordRandomIndex = Int.random(in: 0..<wordData.count)
    
    func wordShuffle() {
        wordRandomIndex = Int.random(in: 0..<wordData.count)
    }
}
