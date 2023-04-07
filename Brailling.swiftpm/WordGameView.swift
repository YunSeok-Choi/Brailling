//
//  WordGameView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/07.
//

import SwiftUI

struct WordGameView: View {
    
    @State var answerText: String = ""
    var brailles = ["a", "p", "p", "l", "e"] // 디코딩한 값으로 변경필요
    
    var body: some View {
        VStack {
            
            HStack {
                
            }
            
            TextField("What is word?", text: $answerText)
            
            Button {
                
            } label: {
                Text("DONE")
                    .padding(.horizontal, 48)
                    .padding(.vertical, 24)
                    .font(.system(.title2).bold())
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding(.vertical, 24)
            }
            
        }
    }
    
}
