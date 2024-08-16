//
//  HomeView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var routeManager = NavigationRouter()
    var body: some View {
        NavigationStack(path: $routeManager.routes){
            VStack {
                MockButton(text: "Push view galeria") {
                    routeManager.push(to: .galleryView)
                }
                .padding(32)
                .navigationTitle("Home View")
            }
            .navigationDestination(for: Route.self) { route in
                route
            }
        }
        .environmentObject(routeManager)
    }
}

#Preview {
    HomeView()
}
