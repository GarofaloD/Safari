//
//  MapView.swift
//  Safari
//
//  Created by Daniel  Garofalo on 9/30/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK:- PROPERTIES
    @State private var region : MKCoordinateRegion = {
        //Region definition
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        
        //zoom level on the region
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        //Composition of data (coordinates and zoom level) for the view
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)
        
        //Returning the data
        return mapRegion
    }()
    
    let locations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
    
    //MARK:- BODY
    var body: some View {
        //MARK:- No1 BASIC MAP
//        Map(coordinateRegion: $region)
//
        //MARK:- No2 MAP WITH ANNOTATIONS
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            //Option a: with pins
           // MapPin(coordinate: item.location, tint: .accentColor)
            
            //Option b: Marker
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //Option C: Custom
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }//:Anotation
            
        })
        
        
        
    }//:BODY
    
    
}

    //MARK:- PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            
    }
}
