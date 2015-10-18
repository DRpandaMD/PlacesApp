//
//  ViewController.swift
//  Lab3
//
//  Created by Michael Zarate on 9/16/15.
//  Copyright (c) 2015 Michael Zarate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var placesTabel: UITableView!

    
    var places : placesData = placesData()
    var place : String = ""
    var placeDetails : String = ""
    var pictureReference : String = ""
    var longitude : Double = 0.0
    var latitude : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return places.places.count
    }
    
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("placesCell", forIndexPath: indexPath) 
        
        cell.textLabel?.text = places.places[indexPath.row].getName();
        
        return cell
        
    }

    
    // segue will be called as a row of the table is selected
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedIndex: NSIndexPath = self.placesTabel.indexPathForCell(sender as! UITableViewCell)!
        
        self.place = places.places[selectedIndex.row].getName()
        self.placeDetails = places.places[selectedIndex.row].getDetails()
        self.pictureReference=places.places[selectedIndex.row].getPictureRef()
        self.longitude = places.places[selectedIndex.row].getLongitude()
        self.latitude = places.places[selectedIndex.row].getLatitude()
        
        
        if(segue.identifier == "Details"){
            if let DetailsViewController: DetailsViewController = segue.destinationViewController as? DetailsViewController
            {
                DetailsViewController.selectedPlace = place
                DetailsViewController.selectedPlaceDetails = placeDetails
                DetailsViewController.selectedPicture = pictureReference
                DetailsViewController.selectedLong = longitude
                DetailsViewController.selectedLat = latitude
                
            }
        }
    }




}