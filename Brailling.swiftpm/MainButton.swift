//
//  MainButton.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/03.
//

import SwiftUI

struct MainButton: View {
    let label: String
    
    var body: some View {
        Text(label)
            .font(.title2)
            .foregroundColor(.white)
            .frame(width: 296, height: 120)
            .background(.black)
            .cornerRadius(50)
            .padding(24)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(label: "Braille Dictionary")
    }
}
