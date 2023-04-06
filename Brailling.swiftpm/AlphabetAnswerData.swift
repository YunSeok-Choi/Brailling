//
//  AlphabetAnswerData.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/06.
//

import Foundation

class AlphabetAnswer: ObservableObject {
    
    @Published var answer: [Bool] = [false, false, false,
                                     false, false, false]
    
}
