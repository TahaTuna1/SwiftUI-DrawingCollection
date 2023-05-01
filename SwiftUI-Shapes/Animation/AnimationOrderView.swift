//
//  animation4.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 2.05.2023.
//

import SwiftUI

struct AnimationOrderView: View { // Spring and Default but in different order
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)// Position matters 
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct AnimationOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationOrderView()
    }
}
