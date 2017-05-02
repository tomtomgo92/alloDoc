//
//  ViewController.swift
//  alloDoc
//
//  Created by mac on 02/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var mapView: MKMapView!
    
    // Initialise la carte a la coordonnee (Ici HINOLULU)
    let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    let regionRadius: CLLocationDistance = 1000 //Sur 1000 Metre (1KM) a partir du centre de la mapView
    

   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //j'appel ma function de centrage par rapport aux coordoonnees
       centerMapOnLocation(location: initialLocation)

    }
    
    

//MARK: Centrer la map
    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0,
                                                                  regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    

}


