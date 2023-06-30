//
//  healthyRecipes.swift
//  testApp
//
//  Created by Aditi Gupta on 6/29/23.
//

import SwiftUI

struct healthyRecipes: View {
    var body: some View {
        ZStack {
            Color(red: 0.76, green: 0.88, blue: 0.77)
                .ignoresSafeArea()
            
            VStack {
                Text("RECIPES")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.344, saturation: 0.946, brightness: 0.521))
                    .padding()
                
                Text("Here are some healthy recipes to make that will keep you full and happy!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Link(destination: URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/pan-seared-salmon-with-kale-and-apple-salad-recipe-3361718")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))

                    
                        .font(.largeTitle)
                    Text("Pan-Seared Salmon w/ Kale and Apple Salad")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    
                }
                
                
                Link(destination: URL(string: "https://cookieandkate.com/best-quinoa-salad-recipe/")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("Quinoa Salad")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .multilineTextAlignment(.center)

                }
                
                Link(destination: URL(string: "https://www.delish.com/cooking/recipe-ideas/a22668083/cilantro-lime-shrimp-lettuce-wraps-recipe/")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("Cilantro Lime Shrimp Wraps")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                
                }
                
                Link(destination: URL(string: "https://minimalistbaker.com/sweet-potato-chickpea-buddha-bowl/")!) {
                    Image(systemName: "link.circle.fill")
                    .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                    .padding(5)

                    
                        .font(.largeTitle)
                    Text("Sweet Potato Chickpea Buddha Bowl")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                
                }
                
                Link(destination: URL(string: "https://pinchofyum.com/roasted-cauliflower-burrito-bowls")!) {
                    Image(systemName: "link.circle.fill")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .padding(5)
                    
                    
                        .font(.largeTitle)
                    Text("Cauliflower Burrito Bowl")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                }
                
                Link(destination: URL(string: "https://www.delish.com/cooking/recipe-ideas/a40446831/rainbow-roll-recipe/")!) {
                    Image(systemName: "link.circle.fill")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                        .padding(5)
                    
                    
                        .font(.largeTitle)
                    Text("Rainbow Rolls")
                        .foregroundColor(Color(hue: 0.396, saturation: 0.945, brightness: 0.381))
                }
                
                
                
                
                Image("cutefood")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175, height: 175) // Adjust the width and height of the image
          



            }
            
            
        }
    }
    
    struct healthyRecipes_Previews: PreviewProvider {
        static var previews: some View {
            healthyRecipes()
        }
    }
}
