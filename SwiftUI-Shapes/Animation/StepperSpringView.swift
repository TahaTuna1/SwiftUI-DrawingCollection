//
//  animation2.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 2.05.2023.
//

import SwiftUI

struct StepperSpringView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        print(animationAmount)
        
        
        return VStack{
            Spacer()
            
            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
                .padding(20)
            
            Spacer()
            
            Button("Tap Me"){
                animationAmount += 1
            }
            .padding(50)
            .background(.red.gradient)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            Spacer()
        }
    }
}

struct Stepperspring_Previews: PreviewProvider {
    static var previews: some View {
        StepperSpringView()
    }
}
