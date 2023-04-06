//
//  BrailleView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/04.
//

import SwiftUI

struct BrailleCricle: View {
    
    @Binding var circleColor: Bool
    @Binding var isTab: Bool
        
    var body: some View {
        
        Circle()
            .fill(circleColor ? .primary : .secondary)
            .padding()
            .onTapGesture {
                if isTab {
                    circleColor.toggle()
                }
            }
        
    }
}
