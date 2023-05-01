//
//  TapMePulseView.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 1.05.2023.
//

import SwiftUI

struct TapMePulseView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me"){
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 0.5)
                    .repeatForever(autoreverses: false),
        //            .repeatCount(5, autoreverses: true),
        //            .delay(1),
                    value: animationAmount) // affects everything
        )
//        .scaleEffect(animationAmount)
        //        .blur(radius: (animationAmount - 1) * 3)
        .onAppear{
            animationAmount = 2
        }
    }
}

struct TapMePulse_Preview: PreviewProvider {
    static var previews: some View {
        TapMePulseView()
    }
}
