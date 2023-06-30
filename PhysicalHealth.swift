//
//  PhysicalHealth.swift
//  testApp
//
//  Created by Aditi Gupta on 6/28/23.
//

import SwiftUI

struct PhysicalHealth: View {
    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            
            VStack {
                Text("✨PHYSICAL HEALTH✨")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.344, saturation: 0.946, brightness: 0.521))
                
                Text("Taking care of your physical health is essential to maintaining your mental health and overall well being. By incoorperating exercise and healthy meals into everyday life, individuals can feel better both mentally and physically.")
                     
                     
                     
                     
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(Color.black)
                    .padding()
                
                Text ("here are some healthy recipes and workout plans!")
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.277, saturation: 0.943, brightness: 0.412))
                    .multilineTextAlignment(.center)
                    .padding()
    
                
                NavigationLink(destination: healthyRecipes()) {
                            Text("Recipes:")
                                    }
                .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .padding()
                
                NavigationLink(destination: workoutPlans()) {
                            Text("Workouts:")
                                    }
                .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .padding()
            }
            
            
            }
            
            
        }
        
}

struct PhysicalHealth_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalHealth()
    }
}
