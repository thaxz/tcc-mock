//
//  Construction.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation

//TODO: add properties and methods
struct Construction: Identifiable {
    
    let name: String
    let imageName: String
    let description: String
    let categories: [String]
    
    var id: String {
        name + categories[0]
    }
    
}
