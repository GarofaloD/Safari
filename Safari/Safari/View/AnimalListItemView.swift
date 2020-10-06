//
//  AnimalListItemView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/6/20.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK:- PROPERTIES
    let animal : Animal //Actual value will be passed when constrcting the list
    
    //MARK:- BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }//:BODY
    
    
    
}

    //MARK:- PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    
    //This can be implemented only for the preview for purposes of propto without affecting the view build
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        //bring first annimal from the animal.json file
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
