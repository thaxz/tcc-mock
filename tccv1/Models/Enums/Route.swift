//
//  Route.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import Foundation
import SwiftUI

enum Route {
    
    case constructionView
    case detailView(construction: Construction)
    case timelineView
    case mapView
    case galleryView
    case imageDetail(galleryPhoto: GalleryPhoto)
    case infoView
    
}

// MARK: - View and Hashable Conformance

extension Route: View {
    /// A SwiftUI View representation of the current Route.
    var body: some View {
        switch self {
        case .constructionView:
            ConstructionsView()
        case .detailView(let construction):
            DetailView(construction: construction)
        case .timelineView:
            TimelineView()
        case .mapView:
            MapView()
        case .galleryView:
            GalleryView()
        case .imageDetail(let galleryPhoto):
            ImageDetailView(photo: galleryPhoto)
        case .infoView:
            InfoView()
        }
    }
}

//TODO: refactor equatable
extension Route: Hashable {
    
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs){
        case (.constructionView, .constructionView):
            return true
        case (.detailView(let lshItem), .detailView(let rhsItem)):
            return lshItem.name == rhsItem.name
        case (.timelineView, .timelineView):
            return true
        case (.mapView, .mapView):
            return true
        case (.galleryView, .galleryView):
            return true
        case (.imageDetail(let lshItem), .imageDetail(let rhsItem)):
            return lshItem.imageName == rhsItem.imageName
        default:
            return false
        }
    }
    
    /// Generates a hash value for the enum cases to conform to the Hashable protocol.
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
}
