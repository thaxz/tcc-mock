//
//  GalleryPhoto.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import Foundation

struct GalleryPhoto: Identifiable {
    
    let imageName: String
    let title: String
    let subtitle: String
    
    var id: String {
        title + imageName
    }
    
}
