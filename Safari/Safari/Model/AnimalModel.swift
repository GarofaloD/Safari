//
//  AnimalModel.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/6/20.
//

import SwiftUI

struct Animal: Codable, Identifiable  {
    
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact : [String]
    
    
}
