import SwiftUI

@main
struct MyApp: App {
    
    var answer = AlphabetAnswer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(answer)
        }
    }
}
