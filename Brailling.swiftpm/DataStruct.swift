//
//  DataStruct.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/04.
//

import Foundation
import SwiftUI

struct Alphabet : Hashable, Decodable, Identifiable {
    let id : Int
    let charactor : String
    let braille : [Bool]
}
