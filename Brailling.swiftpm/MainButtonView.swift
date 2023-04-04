//
//  MainButton.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/03.
//

import SwiftUI

struct MainButtonView: View {
    let label: String
    
    var body: some View {
        Text(label)
            .padding(.horizontal, 60)
            .padding(.vertical, 40)
            .font(.title2)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(50)
            .padding(24)
    }
}
