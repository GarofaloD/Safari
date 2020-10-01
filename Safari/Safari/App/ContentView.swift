//
//  ContentView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 9/30/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(){
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 00, leading: 0, bottom: 0, trailing: 0)) //Modifier for the specific row
            }//:LIST
            .navigationBarTitle("Safari", displayMode: .large)
        }//:NAVIGATION VIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
