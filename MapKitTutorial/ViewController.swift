//
//  ViewController.swift
//  MapKitTutorial
//
//  Created by Mariem Ayadi on 11/8/14.
//  Copyright (c) 2014 Mariem Ayadi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView! 
    override func viewDidLoad() {
        super.viewDidLoad()
        // A Map kit needs to have certain values
        
        //input known location
        //var latitude:CLLocationDegrees = 48.399193
        //var longitude:CLLocationDegrees = 9.993341
        
        //Ford Hall
        var latitude:CLLocationDegrees = 42.315904
        var longitude:CLLocationDegrees = -72.637915
        
        var latitudeDelta:CLLocationDegrees = 0.01
        var longitudeDelta:CLLocationDegrees = 0.01
        
        //A structure that defines the area spanned by a map region.
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latitudeDelta, longitudeDelta)
    
        //Structure containing a geographical coordinate
        var buildingLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //A structure that defines which portion of the map to display. (center coordinate + span)
        var regionOfInterest:MKCoordinateRegion = MKCoordinateRegionMake(buildingLocation, theSpan)
        
        self.mapView.setRegion(regionOfInterest, animated: true)
        //NOTE:
        //animated --> Specify YES if you want the map view to animate the transition to the new region or NO if you want the map to center on the specified region immediately.
        
        //The MKPointAnnotation class defines a concrete annotation object located at a specified point.
        var buildingAnnotation = MKPointAnnotation()
        
        buildingAnnotation.coordinate = buildingLocation
        buildingAnnotation.title = "Building"
        buildingAnnotation.subtitle = "What about it"
        
        self.mapView.addAnnotation(buildingAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

