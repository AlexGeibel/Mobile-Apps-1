import SwiftUI

struct ContentView: View {
    
    @State var mainView: Int = 0
    @State var displayNum: String = "0"
    @State var num1: Int = 0
    @State var num2: Int = 0
    @State var finalValue: Int = 0
    @State var operateMultiply: Bool = false
    @State var operateDivide: Bool = false
    @State var operateSubtract: Bool = false
    @State var operateAddition: Bool = false
    @State var isnum1: Bool = true
  
    var body: some View {
        
        ZStack {
             Color.black
            VStack {
                Spacer()
                HStack{
                    Text(displayNum)
                        .frame(width: 350, alignment: .trailing)
                        .font(.system(size: 65))
                        .foregroundColor(.white)
                }
                
                // Row 1 of Buttons
                
                HStack{
                    Button(action: {
                        isnum1 = true
                        num1 = 0
                        num2 = 0
                        displayNum = "0"
                        operateMultiply = false
                        operateDivide = false
                        operateAddition = false
                        operateSubtract = false
                    }, label: {
                        Text("AC")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                            .background(Color(.white))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "-"
                            }
                            else {
                                displayNum = "-" + displayNum
                            }
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "-"
                            }
                            else {
                                displayNum = "-" + displayNum
                            }
                        }
                    }, label: {
                        Text("+/-")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                            .background(Color(.white))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        print("will work soon")
                    }, label: {
                        Text("%")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                            .background(Color(.white))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        num1 = Int(displayNum) ?? 0
                        displayNum = "0"
                        isnum1 = false
                        operateDivide = true
                    }, label: {
                        Text("/")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.orange))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                }
                
                // Row 2 of Buttons
                
                HStack{
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "7"
                            }
                            else {
                                displayNum += "7"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "7"
                            }
                            else {
                                displayNum += "7"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("7")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "8"
                            }
                            else {
                                displayNum += "8"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "8"
                            }
                            else {
                                displayNum += "8"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("8")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "9"
                            }
                            else {
                                displayNum += "9"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "9"
                            }
                            else {
                                displayNum += "9"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("9")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        num1 = Int(displayNum) ?? 0
                        displayNum = "0"
                        isnum1 = false
                        operateMultiply = true
                    }, label: {
                        Text("x")
                            .offset(y: -2)
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.orange))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                }
                
                // Row 3 of Buttons
                
                HStack{
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "4"
                            }
                            else {
                                displayNum += "4"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "4"
                            }
                            else {
                                displayNum += "4"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("4")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "5"
                            }
                            else {
                                displayNum += "5"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "5"
                            }
                            else {
                                displayNum += "5"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("5")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "6"
                            }
                            else {
                                displayNum += "6"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "6"
                            }
                            else {
                                displayNum += "6"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("6")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        num1 = Int(displayNum) ?? 0
                        displayNum = "0"
                        isnum1 = false
                        operateSubtract = true
                    }, label: {
                        Text("-")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.orange))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                }
                
                // Row 4 of Buttons
                
                HStack{
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "1"
                            }
                            else {
                                displayNum += "1"

                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "1"
                            }
                            else {
                                displayNum += "1"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("1")
                            .font(.system(size: 35))
                        
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "2"
                            }
                            else {
                                displayNum += "2"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "2"
                            }
                            else {
                                displayNum += "2"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("2")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "3"
                            }
                            else {
                                displayNum += "3"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "3"
                            }
                            else {
                                displayNum += "3"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("3")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        num1 = Int(displayNum) ?? 0
                        displayNum = "0"
                        isnum1 = false
                        operateAddition = true
                    }, label: {
                        Text("+")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.orange))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                }
                
                // Row 5 of Buttons
                
                HStack{
                    Button(action: {
                        if isnum1 {
                            if displayNum == "0" {
                                displayNum = "0"
                            }
                            else {
                                displayNum += "0"
                                
                            }
                            print(displayNum)
                        }
                        else {
                            if displayNum == "0" {
                                displayNum = "0"
                            }
                            else {
                                displayNum += "0"
                                
                            }
                            print(displayNum)
                        }
                    }, label: {
                        Text("0")
                            .offset(x: 30)
                            .font(.system(size: 40))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 180, height: 90, alignment: .leading)
                            .background(Color.gray)
                    })
                    .clipShape(Capsule())
                    .frame(width: 180, height: 90)
                    Button(action: {
                        print("does not work yet")
                    }, label: {
                        Text(".")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.gray))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                    Button(action: {
                        num2 = Int(displayNum) ?? 0
                        print(isnum1)
                        if operateMultiply == true {
                            finalValue = num1 * num2 
                            displayNum = ("\(finalValue)")
                        }
                        if operateDivide == true {
                            finalValue = num1 / num2
                            displayNum = ("\(finalValue)")
                        }
                        if operateAddition == true {
                            finalValue = num1 + num2
                            displayNum = ("\(finalValue)")
                        }
                        if operateSubtract == true {
                            finalValue = num1 - num2
                            displayNum = ("\(finalValue)")
                        }
                        operateMultiply = false
                        operateDivide = false
                        operateAddition = false
                        operateSubtract = false
                    }, label: {
                        Text("=")
                            .font(.system(size: 35))
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 90, height: 90)
                            .background(Color(.orange))
                    })
                    .clipShape(Circle())
                    .frame(width: 90, height: 90)
                }
            }
            .padding()
            
        }
    }
}
