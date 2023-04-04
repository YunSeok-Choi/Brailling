//
//  BrailleView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/04.
//

import SwiftUI

struct BrailleView: View {
    
    @State var viewTab = false
    @State var circleColor: [Bool] = [false, false, false,
                                      false, false, false]
    
    var body: some View {
        
        HStack {
         
            VStack {
                
                BrailleCricle(circleColor: $circleColor[0], isTab: $viewTab)
                    
                BrailleCricle(circleColor: $circleColor[1], isTab: $viewTab)
                
                BrailleCricle(circleColor: $circleColor[2], isTab: $viewTab)
            }
            
            VStack {
                
                BrailleCricle(circleColor: $circleColor[3], isTab: $viewTab)
                
                BrailleCricle(circleColor: $circleColor[4], isTab: $viewTab)
                
                BrailleCricle(circleColor: $circleColor[5], isTab: $viewTab)
                
            }
            
        }
    }
}

struct BrailleCricle: View {
    
    @Binding var circleColor: Bool
    @Binding var isTab: Bool
        
    var body: some View {
        
        Circle()
            .fill(circleColor ? .black : .gray)
            .padding()
            .onTapGesture {
                if isTab {
                    circleColor.toggle()
                }
            }
        
    }
}
