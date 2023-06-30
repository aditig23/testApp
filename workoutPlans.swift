//
//  workoutPlans.swift
//  testApp
//
//  Created by Aditi Gupta on 6/30/23.
//

import SwiftUI

struct workoutPlans: View {
    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            
            VStack {
                Text("WORKOUTS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.344, saturation: 0.946, brightness: 0.521))
                    .padding()
                
                Text("Here are some workout plans and links to help you stay active!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Link(destination: URL(string: "https://www.healthline.com/health/fitness-exercise/cardio-exercises-list")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))

                    
                        .font(.largeTitle)
                    Text("HIIT")
                        .font(.title2)
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    
                }
                
                
                Link(destination: URL(string: "https://www.menshealth.com/fitness/a25424850/best-hiit-exercises-workout/")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("AT-HOME")
                    
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .multilineTextAlignment(.center)
                        .font(.title2)

                }
                
                Text("  pilates")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .multilineTextAlignment(.center)
                    .font(.title3)

            
                
                Link(destination: URL(string: "https://www.muscleandfitness.com/routine/workouts/workout-routines/summer-full-body-workout-routines/")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("Full-Body")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .font(.title2)
                
                }
                
                Link(destination: URL(string: "https://www.setforset.com/blogs/news/best-strength-training-programs")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("Cardio")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .font(.title2)
                
                }
                
                Text("    stairmaster \n    treadmill \n    dance")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .multilineTextAlignment(.center)
                    .font(.title3)

                
                
                Image("weights")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 175) // Adjust the width and height of the image
          



            }
        }
    }
    
    struct workoutPlans_Previews: PreviewProvider {
        static var previews: some View {
            workoutPlans()
        }
    }
}
