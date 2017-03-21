//
//  Angle.swift
//  DrawingCirclesTutorial
//
//  Created by Kim, Min Ho on 2015. 3. 21..
//  Copyright (c) 2015년 Kim, Min Ho. All rights reserved.
//

import Foundation
import UIKit

let π = CGFloat(M_PI)
let _2π = CGFloat(π * 2.0)

extension Double {
    var deg: CGFloat { return CGFloat(self * Double(π) / 180.0) }
    var rad: CGFloat { return CGFloat(self) }
}

/*
struct CGAngle {    // struct SKAngle { ???

    /// The native value.
    var native: NativeType

    /// The native type used to store the CGFloat, which is Float on
    /// 32-bit architectures and Double on 64-bit architectures.
    typealias NativeType = Double
    init() { native = 0.0 }
    init(_ value: Float) { native = Double(value) }
    init(_ value: Double) { native = value }
}

// var temp: CGAngle = CGAngle(0.0)
*/

//  Returns the shortest angle between two angles. The result is always between -π and π.

func angleBetween(θ1: CGFloat, θ2: CGFloat) -> CGFloat {
    var θ = (θ2 - θ1) % _2π
    if (θ >= π) {
        θ = θ - _2π
    }
    if (θ <= -π) {
        θ = θ + _2π
    }
    return θ
}

func setAnglesBy(Δp: CGPoint) -> CGFloat {
    let θp = Double(atan2(Δp.y, Δp.x)).rad

    return θp
}

func angleWith(origin: CGPoint, p1: CGPoint, p2: CGPoint) -> CGFloat {
    let angle1 = setAnglesBy(p1 - origin)
    let angle2 = setAnglesBy(p2 - origin)

    let angle = angleBetween(angle1, θ2: angle2)

    return abs(angle)
}
