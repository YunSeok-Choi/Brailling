//
//  AlphabetView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetView: View {
    
    var alphabet: Alphabet
    @State var viewTab = false
    @State var circleCheck: [Bool] = [false, false, false,
                                      false, false, false]
   
    var body: some View {
        GeometryReader { geometry in
            HStack {
                
                Spacer()
                    .padding()
                
                VStack {
                    
                    Spacer()
                    
                    Text("\(alphabet.charactor)")
                        .font(.system(size: 96))
                        .fontWeight(.bold)
                    
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
//                    BrailleView(circleCheck: alphabet.braille)
                    
                    Spacer()
                }
                
                Spacer()
                    .padding()
            }
            .ignoresSafeArea(.all)
        }
    }
}