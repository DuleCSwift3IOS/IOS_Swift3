//
//  ViewController.swift
//  Location Aware
//
//  Created by Dushko Cizaloski on 2/11/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet var latitude: UILabel!
    @IBOutlet var longitude: UILabel!
    @IBOutlet var course: UILabel!
    @IBOutlet var speed: UILabel!
    @IBOutlet var altitude: UILabel!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.distanceFilter = kCLDistanceFilterNone
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBOutlet var thorougfare: UILabel!
    @IBOutlet var subthorougfare: UILabel!
    @IBOutlet var country: UILabel!
    @IBOutlet var postalcode: UILabel!
    @IBOutlet var subadministrativeArea: UILabel!
    @IBOutlet var sublocality: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation : CLLocation = locations[0]
        
        let Latitude : CLLocationDegrees = userLocation.coordinate.latitude
        
        latitude.text =  String(Latitude)
        
        let Longitude : CLLocationDegrees = userLocation.coordinate.longitude
        
        longitude.text = String(Longitude)
        
        let Course : CLLocationDirection = userLocation.course
        
        course.text = String(Course)
        
        let Speed : CLLocationSpeed = userLocation.speed
        
        speed.text = String(Speed)
        
        let Altitude : CLLocationDistance = userLocation.altitude
        
        altitude.text = String(Altitude)
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
            if error != nil
            {
                print(error as Any)
            }
            else
            {
                if let placemark = placemarks?[0]
                {
                    /*
                     var adderess = ""
                     if placemark.subThoroughfare != nil
                     {
                        address += placemark.subThoroughfare + " "                    
                     }
                     and so one for the rest of them like this. This is maked with one label named: adderss , but i used 6 labels for make this and all of them it's with different names
                     */
                    
                    var subThoroughfare = ""
                    
                    if placemark.subThoroughfare != nil
                    {
                        subThoroughfare = placemark.subThoroughfare!
                    }
                    self.subthorougfare.text = subThoroughfare
                    
                    var Thoroughfare = ""
                    
                    if placemark.thoroughfare != nil
                    {
                        Thoroughfare = placemark.thoroughfare!
                    }
                    
                    self.thorougfare.text = Thoroughfare
                    
                    var subLocality = ""
                    
                    if placemark.subLocality != nil
                    {
                        subLocality = placemark.subLocality!
                    }
                    
                    self.sublocality.text = subLocality
                    
                    var subAdministrativeArea = ""
                    
                    if placemark.subAdministrativeArea != nil
                    {
                        subAdministrativeArea = placemark.subAdministrativeArea!
                    }
                    
                    self.subadministrativeArea.text = subAdministrativeArea
                    
                    var postalCode = ""
                    
                    if placemark.postalCode != nil
                    {
                        postalCode = placemark.postalCode!
                    }
                    
                    self.postalcode.text = postalCode
                    
                    var Country = ""
                    
                    if placemark.country != nil
                    {
                        Country = placemark.country!
                    }
                    
                    self.country.text = Country
                }
            }
        }
        
    }

}

