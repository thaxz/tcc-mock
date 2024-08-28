//
//  GalleryViewModel.swift
//  tccv1
//
//  Created by thaxz on 27/08/24.
//

import Foundation

//TODO: logic && doc
@MainActor
final class GalleryViewModel: ObservableObject {
    
    @Published var constructions: [Construction] = []
    
    init(){
        constructions = [
            Construction(
                name: "Cornelia Street",
                imageNames: ["mockImg2"],
                description: "We were in the backseat, drunk on something stronger than the drinks in the bar. I rent a place on Cornelia Street, I say casually in the car. We were a blank page on the desk, filling in the blanks as we went, as if the street lights formed an arrow, leading us home. And I hope I never lose you, hope it never ends, because I would never walk Cornelia Street again. That's the kind of heartbreak time could never mend.",
                categories: ["Street", "Sad"]
            ),
            Construction(
                name: "Coney Island",
                imageNames: ["mockImg2"],
                description: "I'm on a bench in Coney Island, wondering, where did my baby go? The fast times, the bright lights, the merry-go. Sorry for not making you my centerfold. Over and over, lost again with no surprises, disappointments close your eyes, and it gets colder and colder when the sun goes down. When the sun goes down, the sight that flashed before me was your face.",
                categories: ["Island", "Coney"]
            ),
        ]
    }
}
