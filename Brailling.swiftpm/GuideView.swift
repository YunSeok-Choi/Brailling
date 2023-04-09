//
//  GuideView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/09.
//

import SwiftUI

struct GuideView: View {
    @Binding var content: AppContent
    @State var guideStep = 1
    var gameData = GameManager()

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $guideStep) {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 140, style: .continuous)
                        .fill(.white)
                        .frame(width: 500, height: 500)
                        .padding()
                    
                    VStack {
                        Text("Hello!")
                        
                        Text("Braille is a very important clue for someone.")
                        
                        Text("Check for yourself if this important clue is being well followed in your daily life!")
                        
                        Text("If it wasn't followed, you might be possible to fix it!")
                        
                        Text("To do that, you would need to be able to read Braille, right")
                    }
                }
                .tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .onTapGesture {
                if guideStep == 4 {
                    content = .mainView
                }else {
                    guideStep += 1
                }
            }
        }
    }
}
