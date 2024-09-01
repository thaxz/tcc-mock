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
        constructions = ConstructionsDataService.constructions
    }
}
