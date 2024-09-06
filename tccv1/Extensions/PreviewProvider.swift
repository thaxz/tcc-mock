//
//  PreviewProvider.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation
import SwiftUI
import MapKit

//TODO: DOC
extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    private init() {}
    
    let mockConstruction = Construction(
        name: "Cornelia Street",
        imageNames: ["mockImg2", "mockImg", "mockImg2", "mockImg"],
        description: "We were in the backseat, drunk on something stronger than the drinks in the bar. I rent a place on Cornelia Street, I say casually in the car. We were a blank page on the desk, filling in the blanks as we went, as if the street lights formed an arrow, leading us home. And I hope I never lose you, hope it never ends, because I would never walk Cornelia Street again. That's the kind of heartbreak time could never mend.",
        history: "vem aí ",
        categories: ["Religious", "Sad"],
        coordinates: CLLocationCoordinate2D(latitude: 40.7316017, longitude: -74.0019679)
    )
    let mockEvent = TimelineEvent(title: "Construção da Igreja de São Pedro",
                                  date: "12/13/1989", headerImage: "mockImg")
    
    let mockGalleryPhoto = GalleryPhoto(imageName: "mockNew", title: "Parque da Jaqueira", subtitle: "É o parque da jaqueira em alguma época")
}
