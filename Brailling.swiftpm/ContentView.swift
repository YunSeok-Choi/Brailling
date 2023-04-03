import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Brailling")
                .padding()
                .font(.title)
            
            HStack {
                Rectangle()
                    .frame(width: 972.0, height: 289.0)
                    .cornerRadius(50)
                    .padding(50)
            }
            .padding()
            
            HStack {
                
                Text("Braille Dictionary")
                    .font(.title2)
                
                
                Text("Alphabet Game")
                    .font(.title2)
                
                Text("Words Typing Game")
                    .font(.title2)
            }
            .padding()
            
        }
    }
}
