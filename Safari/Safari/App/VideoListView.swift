//
//  VideoListView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 9/30/20.
//

import SwiftUI

struct VideoListView: View {
    //MARK:- PROPERTIES
    @State var videos : [Video] = Bundle.main.decode("videos.json") //Videos
    
    //Haptics management
    let hapticImact = UIImpactFeedbackGenerator(style: .medium)
    
    
    
    
    
    //MARK:- BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }
            }//:LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
            
        }//:NAVVIEW
    }
}


    //MARK:- PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
