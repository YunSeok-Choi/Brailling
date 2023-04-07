import SwiftUI

@main
struct MyApp: App {
    
    var alphabetData = AlphabetAnswer()
    var wordData = WordAnswer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(alphabetData)
                .environmentObject(wordData)
        }
    }
}
