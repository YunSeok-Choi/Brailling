//
//  SoundManager.swift
//  Brailling
//
//  Created by 최윤석 on 2023/04/08.
//

import AVKit
import Foundation

class SoundManager {
    
    static let sound = SoundManager()
    var player: AVAudioPlayer?
    
    enum SoundName: String {
        case correct = "correct"
        case wrong = "wrong"
        case click = "click"
        case tap = "tap"
    }
    
    func playSound(sound: SoundName) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
}
