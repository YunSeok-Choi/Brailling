//
//  OnboardingView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/09.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var content: AppContent
    @State var OnboardingStep = 1

    var body: some View {
        ZStack {
            
            BackGroundView()
            
            TabView(selection: $OnboardingStep) {
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Hello!")
                        .font(.largeTitle)
                    
                    Text("This app helps you read the alphabet of Braille.")
                        .font(.title2)
                    
                    Text("Braille is a very important clue for someone.")
                        .font(.title2)
                    
                    Text("Have fun learning Braille and check for yourself if this important clue is being well followed in your daily life!")
                        .font(.title2)
                    
                    Text("(Recommend landscape mode)")
                        .font(.callout)
                }
                .tag(1)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text("If it wasn't followed, you might be possible to fix it!")
                        .font(.title2)
                    
                    Text("To do that, you would need to be able to read braille, right?")
                        .font(.title2)
                    
                    Text("Let’s Do it!")
                        .font(.largeTitle)
                }
                .offset(x: -100)
                .tag(2)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onTapGesture {
                if OnboardingStep == 2{
                    content = .mainView
                } else {
                    OnboardingStep += 1
                }
            }
        }
    }
}
