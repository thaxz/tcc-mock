//
//  ImageDetailViewModel.swift
//  tccv1
//
//  Created by thaxz on 08/09/24.
//

import Foundation
import SwiftUI

final class ImageDetailViewModel: ObservableObject {
    // Drag
    @Published var offset: CGSize = .zero
    @Published var lastOffset: CGSize = .zero
    // Zoom
    @Published var currentScale: CGFloat = 1.0
    @Published var lastScale: CGFloat = 1.0
    @Published var isZooming: Bool = false
    
    let maxScale: CGFloat = 5.0
    let minScale: CGFloat = 1.0
    
    func toggleZoom() {
        isZooming.toggle()
        if isZooming {
            currentScale = 1.5
            lastScale = 1.5
        } else {
            resetZoom()
        }
    }
    
    func resetZoom() {
        currentScale = 1.0
        lastScale = 1.0
        offset = .zero
        lastOffset = .zero
    }

    func updateDrag(gesture: DragGesture.Value) {
        offset = CGSize(width: lastOffset.width + gesture.translation.width,
                        height: lastOffset.height + gesture.translation.height)
    }
    
    func endDrag() {
        lastOffset = offset
    }
    
    func updateZoom(scale: CGFloat) {
        let newScale = lastScale * scale
        currentScale = max(min(newScale, maxScale), minScale)
    }
    
    func endZoom() {
        lastScale = currentScale
    }
}
