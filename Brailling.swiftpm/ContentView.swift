import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var gameManager: GameManager
    var alphabetL = alphabetData[11]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                HStack {
                    Text("Brai")
                        .font(.system(size: 157, design: .rounded))
                        .tracking(10)
                    
                    LView.frame(width: 80)
                        .padding(.trailing, 20)
                    
                    LView.frame(width: 80)
                    
                    Text("ing")
                        .font(.system(size: 157, design: .rounded))
                        .tracking(10)
                }
                
                HStack {
                    NavigationLink(destination: DictionaryView()) {
                        MainButtonView(label: "Braille Dictionary")
                    }
                    
                    NavigationLink(destination: AlphabetGameView()) {
                        MainButtonView(label: "Alphabet Game")
                    }
                    
                    NavigationLink(destination: WordGameView()) {
                        MainButtonView(label: "Word Typing Game")
                    }
                }
                .padding(.bottom, -20)
            }
            .onAppear {
                gameManager.isWordGame = true
            }
        }
        .navigationViewStyle(.stack)
    }
    
    var LView: some View {
        HStack {
            VStack {
                BlackBraille()
                
                BlackBraille()
                
                BlackBraille()
            }
            VStack {
                WhiteBraiile()
                
                WhiteBraiile()
                
                WhiteBraiile()
            }
        }
    }
}

