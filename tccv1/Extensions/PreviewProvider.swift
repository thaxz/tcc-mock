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
}
