//
//  CodableBundleExtension.swift
//  Safari
//
//  Created by Daniel  Garofalo on 10/1/20.
//

import Foundation

extension Bundle {
    
    //Blueprint of decoder algorithm
    //Now using generics
    func decode<T: Codable>(_ file: String) -> T {
        
        //1.Locate the json file. In this case, covers.json
        guard let url = self.url(forResource: file, withExtension: nil) else {fatalError("Failed to locate \(file) in bundle")}
        
        //2.Create a property for the data. In this case, the data that comes from the url
        guard let data = try? Data(contentsOf: url) else {fatalError("Failed to load \(file) from bundle")}
        
        //3.Create a decoder JSONDecoder() is specifically desgned to decode json
        let decoder = JSONDecoder()
        
        //4.Create a property for the decoded data.
        guard let loaded = try? decoder.decode(T.self, from: data) else {fatalError("Failed to decode \(file) from bundle")}
        
        //5.Return the ready to use data
        return loaded
    }
    
}
