import SwiftUI

struct ContentView: View {
    
    @State var Q1Grade: Double = 0.0
    @State var Q2Grade: Double = 0.0
    @State var Q1Q2: Double = 0.0
    @State var SemesterGrade: Double = 0.0
    @State var gradeWanted: Int = 0
    @State var finalExam: Double = 0.0
    @State var FinalGrade: Double = 0.0
    @State var midtermYN: Bool = false
    @State var showmidterm: Bool = false
    @State var midtermGrade: Double = 0.0
    @State var midterm: Double = 0.0
    
    var body: some View {
        VStack{
            Text("Final Grade Calculator")
                .font(.system(size: 40))
                .padding()
                .padding(.bottom, 50)
            
            VStack {
                HStack{
                    VStack{
                        Text("Q1 Grade")
                            .fontWeight(.semibold)
                        TextField("Quarter 1", value: $Q1Grade, format: .number)
                            .frame(width: 200, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .font(.title)
                            .multilineTextAlignment(.center)   
                    }
                    VStack{
                        Text("Q2 Grade")
                            .fontWeight(.semibold)
                        TextField("Quarter 2", value: $Q2Grade, format: .number)
                            .frame(width: 200, height: 40)
                            .textFieldStyle(.roundedBorder)
                            .font(.title)
                            .multilineTextAlignment(.center)   
                    }
                }
            }
            HStack{
                VStack{
                    Text("Wanted Grade")
                        .fontWeight(.semibold)
                    
                    
                    Picker("What grade do you want", selection: $gradeWanted) {
                        Text("A+ | 100").tag(100)
                        Text("A | 95").tag(95)
                        Text("A- | 90").tag(90)
                        Text("B+ | 88").tag(88)
                        Text("B | 85").tag(85)
                        Text("B- | 80").tag(80)
                        Text("C | 75").tag(75)
                        Text("D | 65").tag(65)
                    }
                    .frame(width: 150, height: 50)
                    .foregroundColor(.myBlue)
                    .pickerStyle(.menu)                
                    .background(Color.havRed)
                    .clipShape(Capsule())
                    .tint(.white)
                    
                    
                }
                VStack{
                    Text("Midterm")
                        .fontWeight(.semibold)
                    Picker("Midterm", selection: $midtermYN) {
                        Text("No").tag(false)
                        Text("Yes").tag(true)
                    }
                    .frame(width: 150, height: 50)
                    .foregroundColor(.myBlue)
                    .pickerStyle(.menu)                
                    .background(Color.havRed)
                    .clipShape(Capsule())
                    .tint(.white)
                }
                
                
            }
            VStack{
                Text("Midterm Grade")
                    .fontWeight(.semibold)
                TextField("Grade", value: $midtermGrade, format: .number)
                    .frame(width: 200, height: 40)
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
                    .multilineTextAlignment(.center)   
                    
            }
            .opacity(midtermYN == false ? 0: 1)
                Button(action: {
                    Q1Q2 = Q1Grade + Q2Grade
                    SemesterGrade = Q1Q2 / 2.5
                    if midtermYN == false {
                        finalExam = Double(gradeWanted) - SemesterGrade
                        FinalGrade = finalExam / 0.2
                    }
                    if midtermYN == true {
                        midterm = midtermGrade * 0.1
                        finalExam = Double(gradeWanted) - SemesterGrade - midterm
                        FinalGrade = finalExam / 0.1
                    }
                }, label: {
                    Text("Calculate")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color.havRed)
                        .clipShape(Capsule())
                })
            
            .padding()
            Text("You will need to get a \(FinalGrade) to get a \(gradeWanted)")
                .fontWeight(.semibold)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.linearGradient(colors: [.gold, .bgrey], startPoint: UnitPoint(x: 0, y:1), endPoint: UnitPoint(x: 4, y: 0)))    }
}
