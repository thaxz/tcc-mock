//
//  MapView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct MapView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    var body: some View {
        VStack {
            MockButton(text: "Voltar Home") {
                routerManager.popToRoot()
            }
        }
        .padding(32)
        .navigationTitle("Mapa")
    }
}

#Preview {
    MapView()
}
