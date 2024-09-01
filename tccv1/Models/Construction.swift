//
//  Construction.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation
import MapKit

//TODO: add properties and methods
struct Construction: Identifiable, Equatable {

    let name: String
    let imageNames: [String]
    let description: String
    let history: String
    let categories: [String]

    let coordinates: CLLocationCoordinate2D

    var id: String {
        name + categories[0]
    }

    static func == (lhs: Construction, rhs: Construction) -> Bool {
        lhs.id == rhs.id
    }

}
