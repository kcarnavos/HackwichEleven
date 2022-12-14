//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Kaylene Carnavos on 11/15/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(Location: initialLocation)
     
    }


}

func centerMapOnLocation(Location:CLLocation){
    
    let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
    
    mapView.setRegion(coordinateRegion, animated: true)
    
    //let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
 //   mapView.setRegion(coordinateRegion, animated: true)
    
    
}
