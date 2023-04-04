//
//  DictionaryView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/03.
//

import SwiftUI

struct DictionaryView: View {
    
    var body: some View {
        HStack {
            NavigationView {
                List {
                    
                }
            }
            .navigationTitle("Alphabet")
            
            VStack {
                // 동그라미와 분리
                Text("A a")
                
                BrailleView(circleColor: [true, false, true, true, true, true])
                
            }
        }
    }
}
