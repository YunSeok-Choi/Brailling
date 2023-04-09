//
//  BackGroundView.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/09.
//

import SwiftUI

struct BackGroundView: View {
    var offsetLeftX: CGFloat = -100
    var offsetRigthX: CGFloat = 100
    var brailleFrame: CGFloat = 250
    
    var body: some View {
        VStack {
            HStack {
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetLeftX)
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetLeftX)
                
                Spacer()
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetRigthX)
                
            }
            
            HStack {
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetLeftX)
                
                Spacer()
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetRigthX)
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetRigthX)
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetLeftX - 65, y: offsetRigthX)
                
                Spacer()
                
                WhiteBraiile()
                    .frame(brailleFrame)
                    .offset(x: offsetRigthX, y: offsetRigthX)
            }
        }
    }
}

struct BackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundView()
    }
}
