//
//  MeasurementFormatter+extensions.swift
//  AroundMe
//
//  Created by Kevin Perez on 2/16/25.
//

import Foundation
import MapKit

extension MeasurementFormatter {
    
    static var distance: MeasurementFormatter {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .medium
        
        formatter.unitOptions = .naturalScale
        formatter.locale = Locale.current
        
        return formatter
    }
}
