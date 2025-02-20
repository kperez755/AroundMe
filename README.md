AroundMe is an iOS application built with Swift that leverages the **MapKit** framework to help users search for locations, view addresses, navigate via GPS, and filter nearby points of interest using a horizontal scroll view with keyword-based filters.  

## Features ✨  

- **Location Search** – Find places using Apple's **MapKit** framework.  
- **Address Display** – View detailed address information for selected locations.  
- **GPS Navigation** – Get directions to any location directly within the app.  
- **Keyword-Based Filtering** – Use a horizontal scrollable filter to discover specific points of interest (e.g., restaurants, parks, gas stations).  
- **Smooth User Experience** – Built with Swift and optimized for performance and responsiveness.  

## Technologies Used 🛠  

- **Swift** – Primary programming language.  
- **MapKit** – For maps, location search, and navigation.  
- **UIKit** – For UI components including the horizontal scroll view filter.  
- **CoreLocation** – To access the user’s current location.  

## Installation 📲  

1. Clone the repository:  
   ```sh
   git clone https://github.com/kperez755/AroundMe.git
   ```
2. Open the project in **Xcode**.  
3. Ensure you have a valid **Apple Developer Account** to enable location services.  
4. Build and run the app on a simulator or physical device.  

## Permissions 🔒  

Make sure to add the following **NSLocationWhenInUseUsageDescription** to your **Info.plist** file to request location access:  

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We need access to your location to show nearby places.</string>
```
