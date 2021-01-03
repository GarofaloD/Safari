//
//  GalleryView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 9/30/20.
//

import SwiftUI

struct GalleryView: View {
    
    //MARK: PROPERTIES

    @State private var selectedAnimal: String = "lion" //for the top image
    
    //SIMPLE GRID DEFINITION
    //let gridLayout: [GridItem] = [  //3 column grid items as an array
    //    GridItem(.flexible()),
    //    GridItem(.flexible()),
    //    GridItem(.flexible())
    //]

    //EFFICIENT GRID DEFINITION
    //let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    //DYNAMIC GRID LAYOUT
    @State private var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn : Double = 3.0
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    
    //MARK: Functions
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    
    
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            //MARK: GRID
            VStack(alignment: .center, spacing: 30) {
                
                //MARK: Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    //looping through animal images
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth:1))
                            //change the image to the one selected by tapping on it
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }//:LOOP
                }//:GRID
            }//:VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
            
        
        }//:SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
    
    
    
    
    

}

    //MARK: PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
