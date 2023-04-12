//
//  Extension.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/09.
//

import Foundation
import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

extension View {
    func frame(_ size: CGFloat) -> some View {
        return frame(width: size, height: size)
    }
}

