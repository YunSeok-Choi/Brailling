import SwiftUI

@main
struct MyApp: App {
    
    var gameData = GameManager()
    @State var content = AppContent.guideView
    
    var body: some Scene {
        WindowGroup {
            switch content {
            case .guideView:
                OnboardingView(content: $content)
                    .preferredColorScheme(.light)
            case .mainView:
                ContentView(content: $content)
                    .environmentObject(gameData)
                    .preferredColorScheme(.light)
            }
        }
    }
}

enum AppContent: String {
    case guideView
    case mainView
}
