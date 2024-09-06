//
//  GalleryViewModel.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import Foundation
import SwiftUI

final class GalleryViewModel: ObservableObject {
    
    @Published var photos: [GalleryPhoto] = []
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    init(){
        self.photos = [
            GalleryPhoto(imageName: "mockNew",
                         title: "Parque da Jaqueira (1948)",
                         subtitle: "O parque da Jaqueira retratado em 1999 sei la"),
            GalleryPhoto(imageName: "mockNew",
                         title: "Se for isso",
                         subtitle: "O parque da Jaqueira retratado em 1999 sei la"),
            GalleryPhoto(imageName: "mockNew",
                         title: "Tsylor swift",
                         subtitle: "O parque da Jaqueira retratado em 1999 sei la"),
            GalleryPhoto(imageName: "mockNew",
                         title: "Lover",
                         subtitle: "O parque da Jaqueira retratado em 1999 sei la"),
            GalleryPhoto(imageName: "mockNew",
                         title: "Midnights",
                         subtitle: "O parque da Jaqueira retratado em 1999 sei la"),
        ]
    }
    
}
