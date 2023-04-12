import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var gameManager: GameManager
    @Binding var content: AppContent
    var alphabetL = alphabetData[11]
    
    var body: some View {
        NavigationView {
            ZStack {
                
                BackGroundView()
                
                VStack {
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            content = .guideView
                        } label: {
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(50)
                                .padding(.trailing, 50)
                                .foregroundColor(.black)
                        }
                    }
                    
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
                        .simultaneousGesture(TapGesture().onEnded({
                            gameManager.soundManager.playSound(sound: .stop)
                        }))
                        
                        NavigationLink(destination: AlphabetGameView()) {
                            MainButtonView(label: "Alphabet Game")
                        }
                        .simultaneousGesture(TapGesture().onEnded({
                            gameManager.soundManager.playSound(sound: .stop)
                        }))
                        
                        NavigationLink(destination: WordGameView()) {
                            MainButtonView(label: "Word Typing Game")
                        }
                        .simultaneousGesture(TapGesture().onEnded({
                            gameManager.soundManager.playSound(sound: .stop)
                        }))
                    }
                    .padding(.bottom, -20)
                }
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

