//
//  AlphabetAnswerData.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/06.
//

import Foundation

class AlphabetAnswer: ObservableObject {
    
    @Published var randomIndex = Int.random(in: 0..<alphabetData.count)
    @Published var answer: [Bool] = [false, false, false, false, false, false]
    @Published var doneCheck = false
    
    func shuffle() {
        randomIndex = Int.random(in: 0..<alphabetData.count)
    }
    
}
