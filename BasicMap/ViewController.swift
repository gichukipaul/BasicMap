//
//  ViewController.swift
//  BasicMap
//
//  Created by user on 16/10/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MAKE SURE YOU HAVE LOCATION PERMISSIONS
        locationManager.requestWhenInUseAuthorization()
        myMap.showsUserLocation = true
    }

    @IBAction func currentLocationTapped(_ sender: Any) {
        let userLocation = myMap.userLocation
        let region = MKCoordinateRegion(center: userLocation.location!.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        myMap.setRegion(region, animated: true)
    
    }
    
    @IBAction func mapTypeTapped(_ sender: Any) {
        myMap.mapType = MKMapType.standard
    }
}

