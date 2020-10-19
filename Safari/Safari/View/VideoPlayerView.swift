//
//  VideoPlayerView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/19/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK:- PROPERTIES
    var videoSelected : String
    var videoTitle : String

    //MARK:- BODY
    var body: some View {
        //FromVideoPlayerHelper utility: VideoPlayerHelper().playVideo()
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) { //enclosure block
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
        }//VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

    //MARK:- PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView{
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
