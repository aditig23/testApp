import SwiftUI

struct techniques: View {
    @State private var pomInfo = ""
    @State private var frogInfo = ""
    @State private var ematrixInfo = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Text("TECHNIQUES")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .padding()
                    
                    Button(action: {
                        if pomInfo.isEmpty {
                            pomInfo = "The Pomodoro technique involves using a timer to work in intervals. First, you decide your task and set your timer for however long you want. You work until the timer has gone off, take a small break, and continue the task if needed or start a new task. Some common intervals people use are working for 25 minutes with 5 minute long breaks."
                        } else {
                            pomInfo = ""
                        }
                    }) {
                        Text("Pomodoro Technique:")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .multilineTextAlignment(.center)
                            .cornerRadius(10)
                    }
                    
                    if !pomInfo.isEmpty {
                        Text(pomInfo)
                            .padding()
                    }
                    
                    Button(action: {
                        if frogInfo.isEmpty {
                            frogInfo = "The 'Eat That Frog' technique involves making a list of tasks you need to do and doing the hardest ones first. These are typically the tasks you're putting off because they are so difficult. The reasoning in the technique is that if you get the hardest task out of the way, everything else will seem like a breeze."
                        } else {
                            frogInfo = ""
                        }
                    }) {
                        Text("Eat That Frog!:")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .multilineTextAlignment(.center)
                    }
                    
                    if !frogInfo.isEmpty {
                        Text(frogInfo)
                            .padding()
                    }
                    
                    Button(action: {
                        if ematrixInfo.isEmpty {
                            ematrixInfo = "The Eisenhower Matrix technique, invented by former president Dwight Eisenhower, requires you to organize your to-do list into four different categories. You sort them as either important or not important and urgent or not urgent. Tasks that are important and urgent should be prioritized first. Tasks that are important but not urgent should be given a specific deadline and prioritized next. Tasks that are not important but they are urgent should either be delegated or given a small time frame to get done. Lastly, tasks that are neither urgent nor important should be deleted."
                        } else {
                            ematrixInfo = ""
                        }
                    }) {
                        Text("Eisenhower Matrix:")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .multilineTextAlignment(.center)
                    }
                    
                    if !ematrixInfo.isEmpty {
                        Text(ematrixInfo)
                            .padding()
                    }
                    
                    Image("book")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 175, height: 175)
                }
                .padding()
            }
        }
    }
}

struct DropdownApp: App {
    var body: some Scene {
        WindowGroup {
            techniques()
        }
    }
}
