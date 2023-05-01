//
//  SwiftUIView.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 2.05.2023.
//

import SwiftUI

struct Sprint3DRotateView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me"){
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                animationAmount += 360
            }
            
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct Spring3dRotateView_Previews: PreviewProvider {
    static var previews: some View {
        Sprint3DRotateView()
    }
}
