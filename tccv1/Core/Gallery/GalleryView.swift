//
//  GalleryView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct GalleryView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    var body: some View {
        VStack {
            MockButton(text: "Push view mapa") {
                routerManager.push(to: .mapView)
            }
        }
        .padding(32)
        .navigationTitle("Construções")
    }
}

#Preview {
    GalleryView()
}
