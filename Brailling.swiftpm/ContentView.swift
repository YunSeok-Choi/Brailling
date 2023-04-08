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
                BlackBraillie
                
                BlackBraillie
                
                BlackBraillie
            }
            VStack {
                WhiteBraiile
                
                WhiteBraiile
                
                WhiteBraiile
            }
        }
    }
    
    var BlackBraillie: some View {
        Circle()
            .fill(.black)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
    }
    
    var WhiteBraiile: some View {
        Circle()
            .fill(.white)
            .overlay(
                Circle()
                    .stroke(Color.gray, lineWidth: 4)
                    .blur(radius: 4)
                    .offset(x: 2, y: 2)
                    .mask(Circle().fill(LinearGradient(.black,. clear)))
            )
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 8)
                    .blur(radius: 4)
                    .offset(x: -2, y: -2)
                    .mask(Circle().fill(LinearGradient(.clear, .black)))
            )
    }
}

