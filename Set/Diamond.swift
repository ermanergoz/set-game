//
//  Diamond.swift
//  Set
//
//  Created by Yusuf Ergoz on 30/10/2023.
//

import SwiftUI

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let center = CGPoint(x: rect.midX, y: rect.midY)
        let width = rect.width
        let height = rect.width / 2

        let topPoint = CGPoint(x: center.x, y: center.y + height / 2)
        let bottomPoint = CGPoint(x: center.x, y: center.y - height / 2)
        let leftPoint = CGPoint(x: center.x - width / 2, y: center.y)
        let rightPoint = CGPoint(x: center.x + width / 2, y: center.y)

        path.move(to: topPoint)
        path.addLine(to: leftPoint)
        path.addLine(to: bottomPoint)
        path.addLine(to: rightPoint)
        path.addLine(to: topPoint)

        return path
    }
}
