//
//  VCMapView.swift
//  alloDoc
//
//  Created by mac on 03/05/2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import MapKit

extension ViewController: MKMapViewDelegate
{
    
                /* //1
                mapView(_:viewForAnnotation:) is the method that gets called for every annotation you add to the map
                (kind of like tableView(_:cellForRowAtIndexPath:) when working with table views),
                to return the view for each annotation.
                */
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if let annotation = annotation as? Artwork
        {
            let identifier = "pin"
            var view: MKPinAnnotationView
            
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
            {
                
                /* //2
                 Also similarly to tableView(_:cellForRowAtIndexPath:),
                 map views are set up to reuse annotation views when some are no longer visible. 
                 So the code first checks to see if a reusable annotation view is available before creating a new one.
                 */
                
                dequeuedView.annotation = annotation
                view = dequeuedView
                //view.pinTintColor = UIColor.green
            }
            else
            {

                /* //3
                 Here you use the plain vanilla MKAnnotationView class if an annotation view could not be dequeued.
                 It uses the title and subtitle properties of your Artwork class to determine what to show in the callout 
                 – the little bubble that pops up when the user taps on the pin. 
                 */
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                //view.image = UIImage(named: "gps-location-map-pin-png-icon-32.png")
                view.rightCalloutAccessoryView = UIButton.init(type: .infoDark) as UIView
        
                
                switch self.artworks[0].discipline {
                case "Sculture":
                    view.pinTintColor = MyCustonColor().hexStringToUIColor(hex: "#31b0d5")
                default:
                    view.pinTintColor = UIColor.black
                }
                
                
                
                }
            
            
            return view
        }
        
        return nil
    }

    func mapView(_ mapView: MKMapView!, annotationView view: MKAnnotationView!,
                 calloutAccessoryControlTapped control: UIControl!)
    {
        let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMaps(launchOptions: launchOptions)
    }

}//[End Extention]
