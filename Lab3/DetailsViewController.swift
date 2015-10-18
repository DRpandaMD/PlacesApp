//
//  DetailsViewController.swift
//  Lab3
//
//  Created by Michael Zarate on 9/16/15.
//  Copyright (c) 2015 Michael Zarate. All rights reserved.
//

import UIKit
import MapKit


class DetailsViewController: UIViewController {

    @IBOutlet weak var PlaceLabel: UILabel!
    
    var selectedPlace = String()
    var selectedPlaceDetails = String()
    var selectedPicture = String()
    var selectedLat : Double = 0.0
    var selectedLong : Double = 0.0
    
    @IBOutlet weak var DetailsLabel: UILabel!
    @IBOutlet weak var PlacePicture: UIImageView!
   
    @IBOutlet var mapView: MKMapView!
  
    @IBOutlet var LatLabel: UILabel!
    @IBOutlet weak var LongLabel: UILabel!
    
    var details = placesData()
    
    
    
        
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //map stuff here
        
        mapView.mapType = MKMapType.Standard
        
        //display Map
        let lon : CLLocationDegrees = selectedLong
        
        let lat : CLLocationDegrees = selectedLat
        
        let coordinates = CLLocationCoordinate2D( latitude: lat, longitude: lon)
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let region: MKCoordinateRegion = MKCoordinateRegionMake(coordinates, span)
        
        self.mapView.setRegion(region, animated: true)

        
        
        
        
        
        self.PlaceLabel.text = selectedPlace
        self.DetailsLabel.text = selectedPlaceDetails
        
        let Picture = UIImage(named: selectedPicture)
        
        self.PlacePicture.image = Picture
        
        self.LatLabel.text = "Latitude: " + String(format: "%.4f", selectedLat)
        
        self.LongLabel.text = "Longitude: " + String(format: "%.4f", selectedLong)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  
        
    

}



