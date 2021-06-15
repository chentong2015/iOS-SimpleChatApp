//
//  LocationViewController.swift
//  MyApp
//
//  Created by CHEN on 09/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit
import MapKit

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    var coreLocationManager = CLLocationManager()
    var locationManager: LocationManager!
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locationInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coreLocationManager.delegate = self
        locationManager = LocationManager.sharedInstance
        //coreLocationManager.requestAlwaysAuthorization()
        
        getLocation()
        
        //Test the code of authorisation in the first time
        let authorizationCode = CLLocationManager.authorizationStatus()
        
        // TO DO
        if authorizationCode == CLAuthorizationStatus.notDetermined && coreLocationManager.responds(to: #selector(CLLocationManager.requestAlwaysAuthorization)) || coreLocationManager.responds(to: #selector(CLLocationManager.requestWhenInUseAuthorization)) {
            
            // Attention : la modification des functions !
            if Bundle.main.object(forInfoDictionaryKey: "NSLocationAlwaysUsageDescription") != nil {
                coreLocationManager.requestAlwaysAuthorization()
                //getLocation()
            } else {
                print("No description provided")
            }
        } else {
            getLocation()
        }
        
    }
    
    // determine the show of the lication in the mapView
    private func locationLManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status != CLAuthorizationStatus.notDetermined || status != CLAuthorizationStatus.denied || status != CLAuthorizationStatus.restricted {
            getLocation()
        }
    }
    
    //Find the location : latitude and longtitue
    func getLocation() {
        locationManager.startUpdatingLocationWithCompletionHandler { (latitude, longitude, status, verboseMessage, error) -> () in
            print("######")
            print(latitude)
            print(longitude)
            print("######")
            self.displayLocation(location: CLLocation(latitude: 48.866667, longitude: 2.333333))
            //self.displayLocation(location: CLLocation(latitude: latitude, longitude: longitude))
        }
    }
   
    // show the location in the mapView
    func displayLocation(location: CLLocation){
        mapView.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude), span: MKCoordinateSpanMake(0.05, 0.05)), animated: true)
        
        let locationPinCoord = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationPinCoord
        
        mapView.addAnnotation(annotation)
        mapView.showAnnotations([annotation], animated: true)
        
        locationManager.reverseGeocodeLocationWithCoordinates(location, onReverseGeocodingCompletionHandler: { (reversGecodeInfo, placemark, error) -> Void in
            let addresse = reversGecodeInfo?.object(forKey: "formattedAddress") as! String
            self.locationInfo.text = addresse
        })
    }
    
    // MARK : Action
    // use button to update the map location
    @IBAction func updateLocation(_ sender: Any) {
        getLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
