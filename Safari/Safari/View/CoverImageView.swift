//
//  CoverImageView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/1/20.
//

import SwiftUI

struct CoverImageView: View {
    //MARK:- PROPERTIES
    //Bundle extension in CodableBundleExtension
    let coverImages : [CoverImage] = Bundle.main.decode("covers.json")
    
    
    //MARK:- BODY
    var body: some View {
        TabView{
            ForEach(coverImages){ item in //Image references froming from the array in covers.json
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//:FOR EACH
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }//:BODY
}

    //MARK:- PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}//:PREVIEW
