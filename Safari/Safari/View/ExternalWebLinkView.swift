//
//  ExternalWebLinkView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/9/20.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK:- PROPERTIES
    let animal : Animal
    
    //MARK:- BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    //Coalescing composition for the url
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string:"https://www.wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
                
            }//:HSTACK
        }//:GROUPBOX
        
    }
}


    //MARK:- PREVIEW
struct ExternalWebLinkView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
