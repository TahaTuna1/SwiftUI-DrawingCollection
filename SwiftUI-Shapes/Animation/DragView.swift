//
//  DragView.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 2.05.2023.
//

import SwiftUI

struct DragView: View { //MARK: Move a view around
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.red, .cyan]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation{
                            dragAmount = .zero
                        }
                    }
            )
            //        .animation(.spring(), value: dragAmount)
        }
        
    }
}

struct Drag_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
