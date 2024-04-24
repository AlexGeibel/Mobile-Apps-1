import SwiftUI

struct ContentView: View {
    
    @State var die1: Int = 0
    @State var die2: Int = 0
    @State var sum: Int = 0
    @State var wins: Int = 0
    @State var losses: Int = 0
    
    
    var body: some View {
        VStack {
            HStack{
                VStack{
                    Text("Wins")
                    withAnimation{
                        Text("\(wins)")
                    }
                }
                Spacer()
                    .frame(width: 20)
                VStack{
                    Text("Losses")
                    withAnimation{
                        Text("\(losses)")
                    }
                }
            }
            .fontWeight(.semibold)
            HStack{
                Image("\(die1)")
                Image("\(die2)")
            }
            Button(action: {
                withAnimation{
                    rolldie1()
                    rolldie2()
                    winslosses()
                }
            }, label: {
                withAnimation{
                    Text("Roll Dice")
                        .frame(width: 150, height: 75)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)   
                }
            })
            Button(action: {
                die1 = 0
                die2 = 0
                wins = 0
                losses = 0
            }, label: {
                Text("Reset")
                    .frame(width: 80, height: 30)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10)   
            })
            .offset(y: 275)

        }
    }
    func rolldie1() 
    {
        die1 = Int.random(in: 1..<7)
    }
    func rolldie2()
    {
        die2 = Int.random(in: 1..<7)
    }
    func winslosses()
    {
        if die1 + die2 == 7 {
            wins += 1
        } else if die1 + die2 == 11 {
            wins += 1
        } else if die1 + die2 == 2 {
            losses += 1
        } else if die1 + die2 == 3 {
            losses += 1
        } else if die1 + die2 == 12 {
            losses += 1
        }
        print(wins, losses)
    }
    
}
