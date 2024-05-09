import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Welcome to Tic-Tac-Toe! To play, click one of the modes below and start playing!")
                    .frame(width: 350)
                    .font(.custom("Avenir", size: 25))
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 200)
                HStack{
                    NavigationLink(destination: gameView()) { 
                        Text("Regular Mode")
                            .frame(width: 150, height: 75)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .background(Color.bgray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                    NavigationLink(destination: emojiView()) { 
                        Text("♥️♠️ Suits Mode")
                            .frame(width: 150, height: 75)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .background(Color.bgray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}
