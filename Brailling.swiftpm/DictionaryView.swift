//
//  DictionaryView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/03.
//

import SwiftUI

struct DictionaryView: View {
    
    var body: some View {
        HStack {
            NavigationView {
                List(alphabetData, id: \.id) { alphabet in
                    NavigationLink("\(alphabet.charactor)", destination: AlphabetView(alphabet: alphabet))
                }
            }
            
        }
    }
}

struct AlphabetView: View {
    
    var alphabet: Alphabet
    
    var body: some View {
        VStack {
            
            Text("\(alphabet.charactor)")
                .font(.system(size: 96))
                .fontWeight(.bold)
            
            BrailleView(circleColor: alphabet.braille)
            
        }
        .navigationBarHidden(true)
    }
}
