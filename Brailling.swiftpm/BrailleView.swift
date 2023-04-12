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
    
    @ViewBuilder
    var WordGameCircle: some View {
        
        Circle()
            .fill(circleColor ? .black : .white)
            .overlay(
                Circle()
                    .stroke(.gray, lineWidth: 4)
                    .blur(radius: 4)
                    .offset(x: 4, y: 4)
                    .mask(Circle().fill(LinearGradient(.black, .clear)))
            )
            .overlay(
                Circle()
                    .stroke(.white, lineWidth: 8)
                    .blur(radius: 4)
                    .offset(x: -2, y: -2)
                    .mask(Circle().fill(.clear))
            )
            .onTapGesture {
                if isTab {
                    circleColor.toggle()
                    gameManager.soundManager.playSound(sound: .tap)
                }
            }
            .animation(.easeInOut(duration: 0.3), value: circleColor)
        
    }
}

struct BlackBraille: View {
    var body: some View {
        Circle()
            .fill(.black)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
    }
}

struct WhiteBraiile: View {
    
    var body: some View {
        Circle()
            .fill(.white)
            .overlay(
                Circle()
                    .stroke(Color.gray, lineWidth: 4)
                    .blur(radius: 4)
                    .offset(x: 2, y: 2)
                    .mask(Circle().fill(LinearGradient(.black,. clear)))
            )
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 8)
                    .blur(radius: 4)
                    .offset(x: -2, y: -2)
                    .mask(Circle().fill(LinearGradient(.clear, .black)))
            )
    }
}
