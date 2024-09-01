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
    @Published var position: MapCameraPosition = .automatic
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        self.constructions = ConstructionsDataService.constructions
    }
    
    func updatePosition(item: MKMapItem){
        self.position = .item(item)
    }
    
    func updateMapRegion(construction: Construction) {
        withAnimation(.easeInOut) {
            position = .region(MKCoordinateRegion(
                center: construction.coordinates,
                span: mapSpan))
        }
    }
    
    
}
