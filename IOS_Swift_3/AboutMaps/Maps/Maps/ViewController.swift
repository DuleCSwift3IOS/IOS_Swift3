//
//  ViewController.swift
//  Maps
//
//  Created by Dushko Cizaloski on 2/10/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let latitude: CLLocationDegrees = 42.05
//        42.005738, 21.384007
//        let longitude: CLLocationDegrees = 21.45
//        
//        let latDelta: CLLocationDegrees = 0.05
//        
//        let lonDelta: CLLocationDegrees = 0.05
//        
//        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
//        
//        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//        
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
//        
//        map.setRegion(region, animated: true)
        
        //This is for find my region where i am
        let Mylatitude: CLLocationDegrees =  42.005738
        
        let Mylongitude : CLLocationDegrees = 21.384007
        
        let MylatDelta : CLLocationDegrees = 0.005
        
        let MylonDelta : CLLocationDegrees = 0.005
        
        let Myspan : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: MylatDelta, longitudeDelta:MylonDelta)
        
        let Mylocation : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: Mylatitude, longitude: Mylongitude)
        
        let Myregion : MKCoordinateRegion = MKCoordinateRegion(center: Mylocation, span: Myspan)
        
        map.setRegion(Myregion, animated: true)
        //This is for get location where am I with pin
        let annotation = MKPointAnnotation()
        
        annotation.title = "I'm here"
        
        annotation.subtitle = "I like get out of here!"
        
        annotation.coordinate = Mylocation
        
        map.addAnnotation(annotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(longpress))
        //2 secounds
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Here code is for add a new pin with new title and subtitle with use a UserInterfaceLongPressGestureRecognizer. When we press on the map about a 2 secunds we will added a new pin with new coordinates and other things for that pin
    func longpress(gestureRecognizer: UILongPressGestureRecognizer)
    {
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New Place"
        
        annotation.subtitle = "I like to go Here forever..."
        
        map.addAnnotation(annotation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

