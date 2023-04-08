//
//  BrailleView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/04.
//

import SwiftUI

struct BrailleCricle: View {
    
    @EnvironmentObject var gameManager: GameManager
    @Binding var circleColor: Bool
    @Binding var isTab: Bool
        
    var body: some View {
        if gameManager.isWordGame {
            WordGameCircle
        } else {
            WordGameCircle.padding()
        }
    }
    
    var WordGameCircle: some View {
        Circle()
            .fill(circleColor ? .primary : .secondary)
            .onTapGesture {
                if isTab {
                    circleColor.toggle()
                }
            }
            .animation(.easeInOut(duration: 0.3), value: circleColor)
        
    }
}
