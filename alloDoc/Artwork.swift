//
//  Artwork.swift
//  alloDoc
//
//  Created by mac on 02/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import MapKit

class Artwork: NSObject, MKAnnotation
{
    let title: String
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D)
    {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String
    {
        return locationName
    }
    
    
} //[End class]
