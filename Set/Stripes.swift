//
//  Stripes.swift
//  Set
//
//  Created by Yusuf Ergoz on 30/10/2023.
//

import SwiftUI

struct StripeView<SymbolShape>: View where SymbolShape: Shape {
    let shape: SymbolShape
    let color: Color
    
    private let numberOfStripes: Int = 4
    private let borderLineWidth: CGFloat = 1.3
    private let spacingColor = Color.white

    var body: some View {
        VStack(spacing: 0.5) {
            ForEach(0 ..< numberOfStripes, id: \.self) { _ in
                spacingColor
                color
            }
            spacingColor
        }
        .mask(shape)
        .overlay(shape.stroke(color, lineWidth: borderLineWidth))
    }
}
