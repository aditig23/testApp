//
//  Productivity.swift
//  testApp
//
//  Created by Aditi Gupta on 6/28/23.
//

import SwiftUI

struct Productivity: View {
    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            
            VStack {
                Text("✨PRODUCTIVITY! ✨")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.344, saturation: 0.946, brightness: 0.521))
                
                Text("Procrastination is a daily battle for many. We understand being productive may not always be easy, so we've provided you with some scientifically proven techniques to help you manage your time better. You can also make a to-do list here.")
                     
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(Color.black)
                    .padding()
                
                Text("Here are some productivity techniques, as well as an interactive to-do list!")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.277, saturation: 0.943, brightness: 0.412))
                    .multilineTextAlignment(.center)
                
                
                NavigationLink(destination: techniques ()) {
                            Text("Productivity Techniques")
                                    }
                .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .padding()
                
                
                NavigationLink(destination: tasksList ()) {
                            Text("To-Do List")
                                    }
                .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .padding()
                
                
                
            } //vstack
        } //zstack
    }// struct
    
    struct Productivity_Previews: PreviewProvider {
        static var previews: some View {
            Productivity()
        }
    }
}
