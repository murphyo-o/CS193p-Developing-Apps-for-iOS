//
//  Shapes.swift
//  SetGame
//
//  Created by Murph on 2021/1/12.
//

import SwiftUI

enum Shapes: CaseIterable {
    case diamondShape
    case squiggleShape
    case ovalShape
}

struct DiamondShape: Shape {
    func path(in rect: CGRect) -> Path {
        let upperCenter = CGPoint(x: rect.midX, y: rect.minY)
        let lowerCenter = CGPoint(x: rect.midX, y: rect.height)
        let midLeft = CGPoint(x: rect.midX-rect.height/3.9, y: rect.midY)
        let midRight = CGPoint(x: rect.midX+rect.height/3.9, y: rect.midY)
        
        var p = Path()
        p.move(to:  upperCenter)
        p.addLine(to: midRight)
        p.addLine(to: lowerCenter)
        p.addLine(to: midLeft)
        p.addLine(to: upperCenter)
        
        let pathRect = p.boundingRect
        let scale: CGFloat = rect.width / pathRect.width
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        p = p.applying(transform)
        
        return p.offsetBy(dx: rect.minX - p.boundingRect.minX, dy: rect.midY - p.boundingRect.midY)
    }
}

struct SquiggleShape: Shape {
    func path(in rect: CGRect) -> Path {
        // to draw a squiggle shape first
        var path = Path()
        
        path.move(to: CGPoint(x: 104.0, y: 15.0))
        path.addCurve(to: CGPoint(x: 63.0, y: 54.0),
                      control1: CGPoint(x: 112.4, y: 36.9),
                      control2: CGPoint(x: 89.7, y: 60.8))
        path.addCurve(to: CGPoint(x: 27.0, y: 53.0),
                      control1: CGPoint(x: 52.3, y: 51.3),
                      control2: CGPoint(x: 42.2, y: 42.0))
        path.addCurve(to: CGPoint(x: 5.0, y: 40.0),
                      control1: CGPoint(x: 9.6, y: 65.6),
                      control2: CGPoint(x: 5.4, y: 58.3))
        path.addCurve(to: CGPoint(x: 36.0, y: 12.0),
                      control1: CGPoint(x: 4.6, y: 22.0),
                      control2: CGPoint(x: 19.1, y: 9.7))
        path.addCurve(to: CGPoint(x: 89.0, y: 14.0),
                      control1: CGPoint(x: 59.2, y: 15.2),
                      control2: CGPoint(x: 61.9, y: 31.5))
        path.addCurve(to: CGPoint(x: 104.0, y: 15.0),
                      control1: CGPoint(x: 95.3, y: 10.0),
                      control2: CGPoint(x: 100.9, y: 6.9))
        
        // rotate it
        let rotation = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
        path = path.applying(rotation)
        // scale it
        let pathRect = path.boundingRect
        let scale: CGFloat = rect.width / pathRect.width
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        path = path.applying(transform)
        
        // move it to center
        return path.offsetBy(dx: rect.minX - path.boundingRect.minX, dy: rect.midY - path.boundingRect.midY)
    }
}

struct OvalShape: Shape {
    func path(in rect: CGRect) -> Path {
        let upperCenter = CGPoint(x: rect.midX, y: rect.midX)
        let lowerCenter = CGPoint(x: rect.midX, y: rect.width*1.95 - rect.midX)
        let upperRight = CGPoint(x: rect.maxX, y: rect.midX)
        let lowerLeft = CGPoint(x: rect.minX, y: rect.width*1.95 - rect.midX)
        let radius = rect.width/2
        let angleLeft = Angle(degrees: 0)
        let angleRight = Angle(degrees: 180)
        let clockwise = true
        
        var p = Path()
        p.move(to: upperRight)
        p.addArc(
            center: upperCenter,
            radius: radius,
            startAngle: angleLeft,
            endAngle: angleRight,
            clockwise: clockwise
        )
        p.addLine(to: lowerLeft)
        p.addArc(
            center: lowerCenter,
            radius: radius,
            startAngle: angleRight,
            endAngle: angleLeft,
            clockwise: clockwise
        )
        p.addLine(to: upperRight)
        
        let pathRect = p.boundingRect
        let scale: CGFloat = rect.width / pathRect.width
        let transform = CGAffineTransform(scaleX: scale, y: scale)
        p = p.applying(transform)
        
        return p.offsetBy(dx: rect.minX - p.boundingRect.minX, dy: rect.midY - p.boundingRect.midY)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        OvalShape()
    }
}
