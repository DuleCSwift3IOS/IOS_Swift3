//
//  ViewController.swift
//  FindingUserLocations
//
//  Created by Dushko Cizaloski on 2/10/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        self.map.showsUserLocation = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       /* print(locations)
         
         let Mylatitude: CLLocationDegrees =  42.005738
         
         let Mylongitude : CLLocationDegrees = 21.384007
         
         let MylatDelta : CLLocationDegrees = 0.005
         
         let MylonDelta : CLLocationDegrees = 0.005
         
         let Myspan : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: MylatDelta, longitudeDelta:MylonDelta)
         
         let Mylocation : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: Mylatitude, longitude: Mylongitude)
         
         let Myregion : MKCoordinateRegion = MKCoordinateRegion(center: Mylocation, span: Myspan)
         
         map.setRegion(Myregion, animated: true)
         
         */
        
//        let userLocation = locations.last
       
        if self.map.showsUserLocation == true
        {
        let userLocation : CLLocation = locations[0]
            
            
            let course : CLLocationDirection = userLocation.course
            
            let speed : CLLocationSpeed = userLocation.speed
            
            let altitude : CLLocationDistance = userLocation.altitude
            
            let longitude : CLLocationDegrees = userLocation.coordinate.longitude
            
            let latitude : CLLocationDegrees = userLocation.coordinate.latitude
            
           // let floor : CLFloor = (userLocation.floor)!
            
            let horizontalAccuracy : CLLocationAccuracy = userLocation.horizontalAccuracy
            
            let verticalAccuracy : CLLocationAccuracy = userLocation.verticalAccuracy
            
            let timestamp : Date = userLocation.timestamp
            
            print("This is user Latitude: \(latitude)" + "\n" + " This is user Longitude\(longitude)" + "\n" + "This is user Course:\(course)" + "\n" + "This is user Speed:\(speed)" + "\n" + "This is user Altitude\(altitude)" + "\n" /*+ "This is user floor:\(floor)" */+ "(n)" + "This is user horizontalAccuracy:\(horizontalAccuracy)" + "\n" + "This is verticalAccuracy:\(verticalAccuracy)" + "\n" + "This is user timestamp:\(timestamp)" )
          
            CLGeocoder().reverseGeocodeLocation(userLocation, completionHandler: { (placemarks, error) in
             if error != nil
             {
              print(error as Any)
             }
                else
                
             {
                 if let placemark = placemarks?[0]
                 {
                        var subThoroughfare = ""
                    
                    if placemark.subThoroughfare != nil
                    {
                        subThoroughfare = placemark.subThoroughfare!
                    }
                    
                    var thoroughfare = ""
                    
                    if placemark.thoroughfare != nil
                    {
                        thoroughfare = placemark.thoroughfare!
                    }
                    
                    var subLocality = ""
                    
                    if placemark.subLocality != nil
                    {
                        subLocality = placemark.subLocality!
                    }

                    var subAdministrativeArea = ""
                    
                    if placemark.subAdministrativeArea != nil
                    {
                        subAdministrativeArea = placemark.subAdministrativeArea!
                    }
                    var postalCode = ""
                    
                    if placemark.postalCode != nil
                    {
                        postalCode = placemark.postalCode!
                    }
                    
                    var country = ""
                    
                    if placemark.postalCode != nil
                    {
                        country = placemark.country!
                    }
                    
                    print(subThoroughfare + thoroughfare + "\n" + subLocality + "\n" + subAdministrativeArea + "\n" + postalCode + "\n" + country)
                    
                 }
             }
            })
        
        }
 
    
   }
    
//    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
//        let alt = newLocation.altitude
//        let course = newLocation.course
//        let speed = newLocation.speed
//        
//        print("This is user Altitude: \(alt)" + "\n" + " This is user Course: \(course)" + "\n" + "This is user Speed:\(speed)")
//        //manager.stopUpdatingLocation()
//    }
}
