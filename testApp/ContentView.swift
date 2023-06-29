//
//  ContentView.swift
//  Glow_mental_health
//
//  Created by Aditi Gupta on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.init(red: 0.76, green: 0.88, blue: 0.77)
                    .ignoresSafeArea()
                VStack {
                    Text("✨ GLOW ✨")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.332, saturation: 0.954, brightness: 0.42))
                        .padding()
                    
                    Text("WELLNESS FOR ALL!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.36, saturation: 0.966, brightness: 0.581))
                        .padding()
                    Text("What do you Want to Improve Today? ")
                        .fontWeight(.semibold)
                        .padding()
                    
                    NavigationLink(destination: mentalHealth()) {
                                            Text("Mental Health")
                                        }
                                        .font(.title2)
                                        .buttonStyle(.borderedProminent)
                                        .tint(.green)
                                        .padding()
                    
                    NavigationLink(destination: PhysicalHealth()) {
                                            Text("Physical Health:")
                                        }
                                        .font(.title2)
                                        .buttonStyle(.borderedProminent)
                                        .tint(.green)
                                        .padding()
                    
                    NavigationLink(destination: Productivity()) {
                                            Text("Productivity:")
                                        }
                                        .font(.title2)
                                        .buttonStyle(.borderedProminent)
                                        .tint(.green)
                                        .padding()
                   
                }
            }

        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
