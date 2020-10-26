//
//  MapAnnotationView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/26/20.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK:- PROPERTIES
    var location : NationalParkLocation
    @State private var animation : Double = 0.0
    
    
    //MARK:- BODY
    var body: some View {
        
        ZStack{
            
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                //0 to 1 in 2 seconds(animation) + default width(speciied on the frame) + 1
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation) //
            
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }//:ZSTACK
        .onAppear(){
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)){ //Ease out in 2 seconds
                animation = 1 //Every time the view appears, animation goes from 0.0 to 1
            }
        }
    }
}



    //MARK:- PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    
    static var locations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
