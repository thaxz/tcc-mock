//
//  EdgeBorder.swift
//  tccv1
//
//  Created by thaxz on 21/08/24.
//

import Foundation
import SwiftUI

//TODO: Doc
struct EdgeBorder: Shape {
    var width: CGFloat
    var edges: [Edge]
    
    func path(in rect: CGRect) -> Path {
        edges.map { edge -> Path in
            switch edge {
            case .top: return Path(.init(x: rect.minX, y: rect.minY, width: rect.width,
                                         height: width))
            case .bottom: return Path(.init(x: rect.minX, y: rect.maxY - width, width: rect.width,
                                            height: width))
            case .leading: return Path(.init(x: rect.minX, y: rect.minY, width: width,
                                             height: rect.height))
            case .trailing: return Path(.init(x: rect.maxX - width, y: rect.minY, width: width,
                                              height: rect.height))
            }
        }.reduce(into: Path()) { $0.addPath($1) }
    }
}
