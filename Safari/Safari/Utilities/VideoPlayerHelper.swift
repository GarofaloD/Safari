//
//  VideoPlayerHelper.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/19/20.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer{
    
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
            
    }
    
    return videoPlayer!
    
}
