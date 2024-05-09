import SwiftUI

struct emojiView: View {
    
    @State var board = Array(repeating: "", count: 9)
    @State var player1Turn: Bool = false
    @State var isOver: Bool = false
    @State var text: String = "Awaiting Result"
    @State var whoWon: String = ""
    @State var counter: Int = 0
    @State var emoji1: String = "♠️"
    @State var emoji2: String = "♥️"
    @State var emoji1Wins: Int = 0
    @State var emoji2Wins: Int = 0
    @State var ties: Int = 0
    @State private var overAlert = false
    
    var body: some View {
        VStack {
            ForEach(0...2, id: \.self) { row in
                HStack{
                    ForEach(0...2, id: \.self) { col in
                        Button(action: {
                            player1Turn.toggle()
                            print(player1Turn)
                            board[ 3 * row + col] = player1Turn ? "\(emoji1)": "\(emoji2)"
                            counter += 1
                            print(counter)
                            checkwin()
                        }, label: {
                            Text("\(board[row * 3 + col])")
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .background(.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .fontWeight(.semibold)   
                        })
                        .disabled(board[row * 3 + col] != "")
                    }
                }
            }
            .alert("\(whoWon)", isPresented: $overAlert) {
                Button("OK", role: .cancel) {gameOver()}
            }
            HStack{
                VStack{
                    Text("\(emoji1) Wins")
                    Text("\(emoji1Wins)")
                } 
                VStack{
                    Text("Ties")
                    Text("\(ties)")
                }
                .padding()
                VStack{
                    Text("\(emoji2) Wins")
                    Text("\(emoji2Wins)")
                }
            }
            HStack{
                VStack{
                    Text("Emoji 1")
                Picker("What grade do you want", selection: $emoji1) {
                    Text("♠️").tag("♠️")
                    Text("♣️").tag("♣️")
                    Text("♥️").tag("♥️")
                    Text("♦️").tag("♦️")
                }
                .frame(width: 100, height: 50)
                .pickerStyle(.menu)                
                .background(Color.gray)
                .clipShape(Capsule())
                .tint(.white)
            }
                VStack{
                    Text("Emoji 2")
                    Picker("What grade do you want", selection: $emoji2) {
                        Text("♠️").tag("♠️")
                        Text("♣️").tag("♣️")
                        Text("♥️").tag("♥️")
                        Text("♦️").tag("♦️")
                    }
                    .frame(width: 100, height: 50)
                    .pickerStyle(.menu)                
                    .background(Color.gray)
                    .clipShape(Capsule())
                    .tint(.white)
                }
            }
            Button(action: {
                gameOver()
                emoji1 = ""
                emoji2 = ""
                emoji1Wins = 0
                emoji2Wins = 0
                ties = 0
            }, label: {
                Text("Reset")
                    .frame(width: 100, height: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .background(.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
            .offset(y: 95)
        }
        .fontWeight(.semibold)
    }
    func checkwin(){
        if board[0] == "\(emoji1)" && board[1] == "\(emoji1)" && board[2] == "\(emoji1)"{
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[3] == "\(emoji1)" && board[4] == "\(emoji1)" && board[5] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[6] == "\(emoji1)" && board[7] == "\(emoji1)" && board[8] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[0] == "\(emoji1)" && board[3] == "\(emoji1)" && board[6] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[1] == "\(emoji1)" && board[4] == "\(emoji1)" && board[7] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[2] == "\(emoji1)" && board[5] == "\(emoji1)" && board[8] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[0] == "\(emoji1)" && board[4] == "\(emoji1)" && board[8] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[2] == "\(emoji1)" && board[4] == "\(emoji1)" && board[6] == "\(emoji1)" {
            whoWon = "\(emoji1) Wins"
            overAlert = true
            emoji1Wins += 1
        }
        else if board[0] == "\(emoji2)" && board[1] == "\(emoji2)" && board[2] == "\(emoji2)"{
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[3] == "\(emoji2)" && board[4] == "\(emoji2)" && board[5] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[6] == "\(emoji2)" && board[7] == "\(emoji2)" && board[8] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[0] == "\(emoji2)" && board[3] == "\(emoji2)" && board[6] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[1] == "\(emoji2)" && board[4] == "\(emoji2)" && board[7] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[0] == "\(emoji2)" && board[4] == "\(emoji2)" && board[8] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[2] == "\(emoji1)" && board[5] == "\(emoji1)" && board[8] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if board[2] == "\(emoji2)" && board[4] == "\(emoji2)" && board[6] == "\(emoji2)" {
            whoWon = "\(emoji2) Wins"
            overAlert = true
            emoji2Wins += 1
        }
        else if counter == 9 {
            whoWon = "You tied"
            overAlert = true
            ties += 1
        }
    }
    func gameOver(){
        board = Array(repeating: "", count: 9)
        counter = 0
        player1Turn = false
    }
}
