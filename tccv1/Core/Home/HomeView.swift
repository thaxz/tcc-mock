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
            TabView{
                TimelineView()
                    .tabItem {
                        Label("Timeline", systemImage: "clock")
                    }
                GalleryView()
                    .tabItem {
                        Label("Timeline", systemImage: "building.columns.fill")
                    }
                MapView()
                    .tabItem {
                        Label("Timeline", systemImage: "map.fill")
                    }
                
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
