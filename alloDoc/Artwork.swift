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
    let pinImage1 = UIImage(named: "maps-location-circular-button.png")
    
    
    let title: String?
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
    
    var subtitle: String?
    {
        return locationName
    }
    /*
    func pinColor() -> MKPinAnnotationColor
    {
        switch discipline
        {
        case "sculture":
            return pinImage1
        default:
            return .green
        }
    }
*/
    
} //[End class]
