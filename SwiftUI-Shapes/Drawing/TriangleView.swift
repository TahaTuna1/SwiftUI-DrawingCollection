//
//  TriangleView.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 1.05.2023.
//

import SwiftUI

struct TriangleView: View {//MARK: Triangle
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y:100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.closeSubpath()
        }
        
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
