//
//  mentalHealth.swift
//  testApp
//
//  Created by Aditi Gupta on 6/27/23.
//

import SwiftUI

struct mentalHealth: View {
   
    var body: some View {
        ZStack {
            Color.init(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            VStack {
                Text("✨ MENTAL HEALTH ✨")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.344, saturation: 0.946, brightness: 0.521))
                
                Text("Mental health is crucial, and raising awareness about anxiety and depression is vital. Going through mental health problems is very common, with around 1 in 5 adults suffering a mental illness. Coping mechanisms like journaling offer an effective way to manage mental well-being. Journaling allows for self-expression, self-reflection, and tracking emotional patterns. By incorporating journaling into daily routines, individuals can enhance resilience and gain valuable insights into their mental health.")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(Color.black)
                    .padding()
                
                Text ("We are also providing you with a digital journal. A safe space to write out your thoughts. ✨ ")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.277, saturation: 0.943, brightness: 0.412))
                    .multilineTextAlignment(.leading)
                    .padding()
    
                
                NavigationLink(destination: DigitalJournal()) {
                            Text("Digital Journal")
                                    }
                .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .padding()
            }

        }


    }
}

struct mentalHealth_Previews: PreviewProvider {
    static var previews: some View {
        mentalHealth()
    }
}
