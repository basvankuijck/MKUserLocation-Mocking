# MKUserLocation+Mocking
> Simulates your location in a `MKMapView`
> 
> ⚠️ Do **NOT** use this in production buils

## Installation

### Cocoapods

```ruby
pod 'MKUserLocation-Mocking', :git => 'https://github.com/basvankuijck/MKUserLocation-Mocking.git', :configuration => 'Debug'
```

### Implementation

#### Swift

```swift
// MKMapView Controller

override func viewDidLoad() {
	super.viewDidLoad()
    #if DEBUG
	    self.mapView.simulateLocation(CLLocationCoordinate2D(latitude: 51.590426, longitude: 4.761983))
    #endif
}
```

Add this to your `Bridging-Header.h`:

```obj-c
#ifdef DEBUG
    #import <MKUserLocation_Mocking/MKMapView+Mocking.h>
#endif
```

#### Objective-c

```obj-c
// MKMapView Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    #if defined(DEBUG)
    	[self.mapView simulateLocation: CLLocationCoordinate2D(51.590426, 4.761983)];
    #endif
}
```