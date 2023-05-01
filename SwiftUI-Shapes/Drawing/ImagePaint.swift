//
//  ImagePaint.swift
//  SwiftUI-Shapes
//
//  Created by Taha Tuna on 1.05.2023.
//

import SwiftUI

struct Image_Paint: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 0.5, height: 0.5), scale: 0.5), lineWidth: 40)
            .frame(width: 300, height: 200)
    }
}

struct ImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        Image_Paint()
    }
}
