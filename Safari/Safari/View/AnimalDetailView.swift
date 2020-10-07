//
//  AnimalDetailView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/7/20.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK:- PROPERTIES
    let animal : Animal
    
    //MARK:- BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    
                    .background( //Line below title
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                //GALLERY
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //FACTS
                
                
                
                //DESCRIPTION
                
                
                
                //MAP
                
                
                //LINK
                
            }//:VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//:SCROLL
    }//:BODY


}

    //MARK:- PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    
    //PREVIEW
   static let animals : [Animal] = Bundle.main.decode("animals.json")

    //body preview
    static var previews: some View {
        
        NavigationView(){// In this case, the navView needs to be added directly on the preview
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("IPhone 11 Pro")
        
            
    }
}//:PREVIEW
