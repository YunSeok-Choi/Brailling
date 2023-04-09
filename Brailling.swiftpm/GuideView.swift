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
    var offsetLeftX: CGFloat = -100
    var offsetRigthX: CGFloat = 100
    var brailleSize: CGFloat = 250
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetLeftX)
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetLeftX)
                    
                    Spacer()
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetRigthX)
                    
                }
                
                HStack {
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetLeftX)
                    
                    Spacer()
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetRigthX)
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(x: offsetRigthX)
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(y: offsetRigthX)
                    
                    Spacer()
                    
                    WhiteBraiile()
                        .frame(size: brailleSize)
                        .offset(y: offsetRigthX)
                }
            }
            TabView(selection: $guideStep) {
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Hello!")
                        .font(.largeTitle)
                    
                    Text("This app helps you read the alphabet of Braille.")
                        .font(.title2)
                    
                    Text("Braille is a very important clue for someone.")
                        .font(.title2)
                    
                    Text("Have fun learning Braille and check for yourself if this important clue is being well followed in your daily life!")
                        .font(.title2)
                }
                .tag(1)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text("If it wasn't followed, you might be possible to fix it!")
                        .font(.title2)
                    
                    Text("To do that, you would need to be able to read braille, right?")
                        .font(.title2)
                    
                    Text("I'll briefly introduce each button for you.")
                        .font(.title2)
                }
                .offset(x: offsetLeftX - 50)
                .tag(2)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onTapGesture {
                if guideStep == 2{
                    content = .mainView
                } else {
                    guideStep += 1
                }
            }
        }
    }
}
