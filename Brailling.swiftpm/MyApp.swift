import SwiftUI

@main
struct MyApp: App {
    
    var gameData = GameManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(gameData)
                .preferredColorScheme(.light)
        }
    }
}
