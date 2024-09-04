//
//  ConstructionsDataService.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import Foundation
import MapKit

final class ConstructionsDataService {
    
    static let constructions = [
        Construction(
            name: "Cornelia Street",
            imageNames: ["mockImg2", "mockImg", "mockImg"],
            description: "We were in the backseat, drunk on something stronger than the drinks in the bar. I rent a place on Cornelia Street, I say casually in the car. We were a blank page on the desk, filling in the blanks as we went, as if the street lights formed an arrow, leading us home. And I hope I never lose you, hope it never ends, because I would never walk Cornelia Street again. That's the kind of heartbreak time could never mend.",
            history: "ja escrevo",
            categories: ["Street", "Sad"],
            coordinates: CLLocationCoordinate2D(latitude: 40.7316017, longitude: -74.0019679)
        ),
        Construction(
            name: "Coney Island",
            imageNames: ["mockImg2", "mockImg", "mockImg"],
            description: "I'm on a bench in Coney Island, wondering, where did my baby go? The fast times, the bright lights, the merry-go. Sorry for not making you my centerfold. Over and over, lost again with no surprises, disappointments close your eyes, and it gets colder and colder when the sun goes down. When the sun goes down, the sight that flashed before me was your face.",
            history: "ja escrevo",
            categories: ["Island", "Coney"],
            coordinates: CLLocationCoordinate2D(latitude: 40.57227221410652,
                                                longitude: -73.97931775204917)
        ),
        Construction(
            name: "Shopping Recife",
            imageNames: ["mockImg2", "mockImg", "mockImg"],
            description: "O Plaza está localizado em Casa Forte, um dos mais tradicionais bairros da Zona Norte da cidade e atende a uma área de influência percebida como um dosO Plaza está localizado em Casa Forte, um dos mais tradicionais bairros da Zona Norte da cidade e atende a uma área de influência percebida como um dos",
            history: "O Plaza está localizado em Casa Forte, um dos mais tradicionais bairros da Zona Norte da cidade e atende a uma área de influência percebida como um dosO Plaza está localizado em Casa Forte, um dos mais tradicionais bairros da Zona Norte da cidade e atende a uma área de influência percebida como um dos",
            categories: ["Shopping", "Recife"],
            coordinates: CLLocationCoordinate2D(latitude: -8.11847204948651,
                                                longitude: -34.904840561374726) 
        ),
    ]
    
}
