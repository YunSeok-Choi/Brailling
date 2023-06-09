//
//  AlphabetView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetView: View {
    
    var alphabet: Alphabet
    @EnvironmentObject var alphabetGame: GameManager
    @State var viewTab = false
    @State var circleCheck: [Bool] = [false, false, false, false, false, false]
   
    var body: some View {
        
        if !alphabetGame.isWordGame {
            GeometryReader { geometry in
                Alphabet
            }
        } else {
            Alphabet
        }
        
    }
    
    var Alphabet: some View {
        HStack {
            
            if !alphabetGame.isWordGame {
                Spacer()
                    .padding()
            } else {
                Spacer(minLength: 50)
            }
            
            VStack {
                Spacer()
                
                if !alphabetGame.isWordGame {
                    Text("\(alphabet.charactor)")
                        .font(.system(size: 96))
                        .fontWeight(.bold)
                        .animation(.easeInOut(duration: 0.3))
                }
                
                HStack {
                    VStack {
                        BrailleCricle(circleColor: $circleCheck[0], isTab: $viewTab)
                        
                        BrailleCricle(circleColor: $circleCheck[1], isTab: $viewTab)

                        BrailleCricle(circleColor: $circleCheck[2], isTab: $viewTab)
                    }
                    
                    VStack {
                        BrailleCricle(circleColor: $circleCheck[3], isTab: $viewTab)

                        BrailleCricle(circleColor: $circleCheck[4], isTab: $viewTab)

                        BrailleCricle(circleColor: $circleCheck[5], isTab: $viewTab)
                    }
                    
                }
                .onChange(of: circleCheck) { value in
                    alphabetGame.answer = value
                }
                .onChange(of: alphabetGame.doneCheck) { value in
                    circleCheck = [Bool](repeating: false, count: 6)
                    alphabetGame.doneCheck = false
                }
                
                Spacer()
            }
            
            if !alphabetGame.isWordGame {
                Spacer()
                    .padding()
            } else {
                Spacer(minLength: 50)
            }
        }
        .ignoresSafeArea(.all)
    }
}
