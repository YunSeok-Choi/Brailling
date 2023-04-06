//
//  AlphabetGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/05.
//

import SwiftUI

struct AlphabetGameView: View {
    
    @State var tabBool = true
    var randomIndex: Int = Int.random(in: 0..<alphabetData.count)
    
    var body: some View {
        VStack {

            AlphabetView(alphabet: alphabetData[randomIndex], viewTab: true)
            
            HStack {
                Button("Clear") {
                    
                }
                
                Button("Done") {
                    
                }
                
            }
            
        }
        
    }
}
