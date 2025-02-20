import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let mapItems: [MKMapItem]
    
    private var sortedItems: [MKMapItem] {
        
        guard let userLocation = LocationManager.shared.manager.location else {
            return mapItems
        }
        
        return mapItems.sorted { lhs, rhs in
            
            // Ensure the locations exist for both lhs and rhs
            guard let lhsLocation = lhs.placemark.location,
                  let rhsLocation = rhs.placemark.location else {
                return false
            }
            
            // initiating the user location on both lhs nad rhs
            let lhsDistance = userLocation.distance(from: lhsLocation)
            let rhsDistance = userLocation.distance(from: rhsLocation)
            
            // Return the comparison between distances
            return lhsDistance < rhsDistance
        }
    }
    
    var body: some View {
        List(sortedItems, id: \.self) { mapItem in
            PlaceView(mapItem: mapItem)
        }
    }
}

#Preview {
    PlaceListView(mapItems: [PreviewData.apple])
}
