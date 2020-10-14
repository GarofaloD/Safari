//
//  VideoModel.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/14/20.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id : String
    let name : String
    let headline : String
    
    
    //Computed property
    var thumbnail : String {
        "video-\(id)"
    }
    
    
    
    
}
