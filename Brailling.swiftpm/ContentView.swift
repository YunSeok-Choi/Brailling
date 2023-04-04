import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Brailling")
                    .padding()
                    .font(.largeTitle)
                
                HStack {
                    
                    Text("")
                    
                    Rectangle()
                        .frame(width: 972.0, height: 289.0)
                        .cornerRadius(50)
                        .padding(50)
                }
                .padding()
                
                HStack {
                    
                    NavigationLink(destination: DictionaryView()) {
                       MainButtonView(label: "Braille Dictionary")
                    }
                    
                    NavigationLink(destination: EmptyView()) {
                        MainButtonView(label: "Alphabet Game")
                    }
                    
                    NavigationLink(destination: EmptyView()) {
                        MainButtonView(label: "Word Typing Game")
                    }
                    
                }
                .padding()
                
            }
        }
        .navigationViewStyle(.stack)
    }
}

