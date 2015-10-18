//
//  placesData.swift
//  Lab3
//
//  Created by Michael Zarate on 9/16/15.
//  Copyright (c) 2015 Michael Zarate. All rights reserved.
//

import Foundation
class placesData
{
    var places : [place] = []
    
    init()
    {
        var newPlace = place(n: "New York", p: "New York is also called the 'big apple'", r: "NewYorkCity.jpg", lat: 40.7127, lon: -74.0059)
        places.append(newPlace)
        
        newPlace = place(n: "London", p: "London is in the United Kingdom" , r: "london.jpg", lat: 51.5073, lon: -0.1277)
        places.append(newPlace)
        
        newPlace = place(n: "Sydney", p: "Sydney is in Australia", r: "sydneyAus.jpg", lat: -33.8674, lon: 151.2069)
        places.append(newPlace)
        
        newPlace = place(n: "Los Angeles", p: "Is the Spanish word for 'the angels'", r: "losAngeles.jpg",lat: 34.0522, lon: -118.2436)
        places.append(newPlace)
        
        newPlace = place(n: "San Fransisco", p: "Is part of the 'Silicone Valley'", r: "Sanfransico.jpg", lat:37.7749 , lon: -122.4194 )
        places.append(newPlace)
        
    }
    
}

class place
{
    private var name: String = ""
    private var placeDetails: String = ""
    private var pictureReference: String = ""
    private var longitude: Double = 0.0
    private var latitude: Double = 0.0
    
    
    init (n: String, p: String, r: String, lat: Double, lon: Double )
    {
        name = n
        placeDetails = p
        pictureReference = r
        longitude = lon
        latitude = lat
        
        
    }
    
    internal func getName()-> String
    {
        return name
    }
    
    internal func getDetails() ->String
    {
        return placeDetails
    }
    
    internal func getPictureRef() ->String
    {
        return pictureReference
    }
    
    internal func getLongitude() -> Double
    {
        return longitude
    }
    
    internal func getLatitude()-> Double
    {
        return latitude
    }
    
    
    
}
