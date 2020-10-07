//
//  InsetGalleryView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/7/20.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK:- PROPERTIES
    let animal : Animal
    
    //MARK:- BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                //Looping through the lion images. It will need \.self since the photos do not have ids.
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//:FOREACH
            }//:HSTACK
        }//:SCROLL
        
    }//:BODY
    
    
}

    //MARK:- PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
