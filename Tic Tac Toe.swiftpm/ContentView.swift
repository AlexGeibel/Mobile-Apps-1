import SwiftUI

struct ContentView: View {
    
    @State var board = Array(repeating: "", count: 9)
    @State var player1Turn: Bool = false
    @State var isOver: Bool = false
    @State var text: String = "Awaiting Result"
    @State var whoWon: String = ""
    @State var counter: Int = 0
    @State var xWins: Int = 0
    @State var oWins: Int = 0
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
                            board[ 3 * row + col] = player1Turn ? "X": "O"
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
                    Text("X Wins")
                    Text("\(xWins)")
                } 
                VStack{
                    Text("Ties")
                    Text("\(ties)")
                }
                VStack{
                    Text("O Wins")
                    Text("\(oWins)")
                }
            }
            .padding()
            Button(action: {
                gameOver()
                xWins = 0
                oWins = 0
                ties = 0
            }, label: {
                Text("Reset")
                    .frame(width: 100, height: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .background(.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
                .offset(y: 200)
        }
        .fontWeight(.semibold)
    }
    func checkwin(){
        if board[0] == "X" && board[1] == "X" && board[2] == "X"{
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[3] == "X" && board[4] == "X" && board[5] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[6] == "X" && board[7] == "X" && board[8] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[0] == "X" && board[3] == "X" && board[6] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[1] == "X" && board[4] == "X" && board[7] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[0] == "X" && board[4] == "X" && board[8] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[2] == "X" && board[4] == "X" && board[6] == "X" {
            whoWon = "X Wins"
            overAlert = true
            xWins += 1
        }
        else if board[0] == "O" && board[1] == "O" && board[2] == "O"{
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[3] == "O" && board[4] == "O" && board[5] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[6] == "O" && board[7] == "O" && board[8] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[0] == "O" && board[3] == "O" && board[6] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[1] == "O" && board[4] == "O" && board[7] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[0] == "O" && board[4] == "O" && board[8] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
        }
        else if board[2] == "O" && board[4] == "O" && board[6] == "O" {
            whoWon = "O Wins"
            overAlert = true
            oWins += 1
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
    }
}

