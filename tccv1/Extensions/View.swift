//
//  View.swift
//  tccv1
//
//  Created by thaxz on 21/08/24.
//

import Foundation
import SwiftUI

//TODO: Doc
extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
