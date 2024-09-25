//
//  MapViewModel.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import Foundation
import MapKit
import SwiftUI

final class MapViewModel: ObservableObject {
    
    @Published var constructions: [Construction] = []
    @Published var selectedConstruction: Construction?
    @Published var mapRegion: MKCoordinateRegion
    
    let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    let initialLocation = CLLocationCoordinate2D(latitude: -8.0476, longitude: -34.8770)
    
    init() {
        self.constructions = ConstructionsDataService.constructions
        self.mapRegion = MKCoordinateRegion(center: initialLocation, span: defaultSpan)
    }
    
    func showConstruction(construction: Construction) {
        withAnimation(.easeInOut) {
            selectedConstruction = construction
            mapRegion = MKCoordinateRegion(center: construction.coordinates,
                                           span: MKCoordinateSpan(latitudeDelta: 0.005,
                                                                  longitudeDelta: 0.005))
        }
    }
    
    func resetMapPosition() {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: initialLocation, span: defaultSpan)
        }
    }

    
    func redirectTo(construction: Construction) {
        let url = URL(string: "maps://?saddr=&daddr=\(construction.coordinates.latitude),\(construction.coordinates.longitude)")
        if UIApplication.shared.canOpenURL(url!) {
              UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
}
