//
//  Animation.swift
//  AnimationSpring_9
//
//  Created by Anzhelika Pikulina on 04/10/2020.
//

import CoreGraphics

struct Animation {
    
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
   var description: String {
       return """
       preset: \(name)
       curve: \(curve)
       force: \(String(format: "%.02f", force))
       duration: \(String(format: "%.02f", duration))
       delay: \(String(format: "%.02f", delay))
       """
   }
    
    static func getRandomAnimation() -> Animation {
        return Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: CGFloat.random(in: 1...2),
            duration: CGFloat.random(in: 1...3),
            delay: CGFloat.random(in: 0.1...0.5)
        )
    }
    
}
