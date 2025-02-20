//
//  MapUtilities.swift
//  AroundMe
//
//  Created by Kevin Perez on 2/15/25.
//

import Foundation
import MapKit
import SwiftUI

func calculateDistance(from: CLLocation, to: CLLocation)  -> Measurement<UnitLength> {
    let distanceInMeters = from.distance(from: to)
    
    return Measurement(value: distanceInMeters, unit: .meters)
}



func performSearch(searchTerm: String, visibleRegion: MKCoordinateRegion?) async throws -> [MKMapItem] {
    
    let request = MKLocalSearch.Request()
    request.naturalLanguageQuery = searchTerm
    request.resultTypes = .pointOfInterest
    guard let region = visibleRegion else { return [] }
    request.region = region
    
    let search = MKLocalSearch(request: request)
    let response = try await search.start()
    return response.mapItems
}

