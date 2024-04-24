import SwiftUI

struct ContentView: View {
    
    @State var num1: Int = 0
    @State var num2: Int = 0
    @State var product: Int = 0
    
    var body: some View {
        VStack {
            Text("The sum of \(num1) and \(num2) is \(product)")
            HStack{
                
                TextField("Number 1", value: $num1, format: .number)
                    .frame(width: 200, height: 40)
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
                    .multilineTextAlignment(.center)          
                    
                TextField("Number 2", value: $num2, format: .number)
                    .frame(width: 200, height: 40)
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
                    .multilineTextAlignment(.center)   
                    
                }
                Button(action: {
                    product = num1 * num2
                }, label: {
                    Text("Multiply")
                        .frame(width: 200, height: 50, alignment: .center)
                        .clipShape(Capsule())
                })
            
            }
        }
    }

