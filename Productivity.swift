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
                Text("Productivity!")
            }
        }
    }
    
    struct Productivity_Previews: PreviewProvider {
        static var previews: some View {
            Productivity()
        }
    }
}
