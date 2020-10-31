//
//  MotionAnimationView.swift
//  Safari
//  Created by Daniel  Garofalo on 10/30/20.


import SwiftUI

struct MotionAnimationView: View {
    //MARK:- PROPERTIES
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    
    //MARK:- BODY
    var body: some View {
        GeometryReader { geometry in //Gives us  a read for size and position of any element, includng parent view
            ZStack{
                ForEach(0...randomCircle, id:\.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation( //animation settings
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }//:LOOP
            }//:ZSTACK
            .drawingGroup()
        }//:GEOMETRY
    }
}



    //MARK:- FUNCTIONS

//1. random coordinates

func randomCoordinate(max: CGFloat) -> CGFloat {
    return CGFloat.random(in: 0...max)
}

//2. random size
func randomSize() -> CGFloat{
    return CGFloat(Int.random(in: 10...300))
}

//randome scale
func randomScale() -> CGFloat{
    return CGFloat(Double.random(in: 0.1...2.0))
}

//random speed
func randomSpeed() -> Double{
    return Double.random(in: 0.025...1.0)
}

//random delay
func randomDelay() -> Double{
    return Double.random(in: 0...2)
}


    //MARK:- PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
