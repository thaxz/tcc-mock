//
//  HomeView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

//TODO: Organize && doc
struct HomeView: View {
    @StateObject private var routeManager = NavigationRouter()
    @State var selection: TabItens = .timeline
    var body: some View {
        NavigationStack(path: $routeManager.routes){
            TabView(selection: $selection){
                TimelineView()
                    .tabItem {
                        Label("Timeline", systemImage: "clock")
                    }.tag(TabItens.timeline)
                GalleryView()
                    .tabItem {
                        Label("Construções", systemImage: "building.columns.fill")
                    }.tag(TabItens.gallery)
                MapView()
                    .tabItem {
                        Label("Mapa", systemImage: "map.fill")
                    }.tag(TabItens.map)
                
            }
            .navigationTitle(selection == .timeline ? "Timeline" :
                                selection == .gallery ? "Construções" : "Mapa")
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
