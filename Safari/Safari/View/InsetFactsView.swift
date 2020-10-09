//
//  InsetFactsView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/9/20.
//

import SwiftUI

struct InsetFactsView: View {
    //MARK:- PROPERTIES
    
    let animal : Animal
    
    
    //MARK:- BODY
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//:TABview
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GROUPBOX
    }//:BODY
}

    //MARK:- PREVIEW
struct InsetFactsView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactsView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
