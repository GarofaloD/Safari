//
//  LocationModel.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/22/20.
//

import Foundation
import MapKit

struct NationalParkLocation : Codable, Identifiable {

    let id : String
    let name : String
    let image : String
    let latitude : Double
    let longitude : Double
    
    //Computed property using MapKit
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
