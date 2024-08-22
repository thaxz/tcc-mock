//
//  PreviewProvider.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation
import SwiftUI

//TODO: DOC
extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    private init() {}
    
    let mockConstruction = Construction(name: "Cornelia ST")
    let mockEvent = TimelineEvent(title: "Construção da Igreja de São Pedro",
                                  date: "12/13/1989", headerImage: "mockImg")
}
