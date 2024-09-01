//
//  MapView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    @StateObject var viewModel: MapViewModel = MapViewModel()
    var body: some View {
        ZStack(alignment: .bottom){
            Map(position: $viewModel.position){
                ForEach(viewModel.constructions){ construction in
                    Annotation("Não sei", coordinate: construction.coordinates, anchor: .bottom) {
                        MapAnnotationView()
                            .scaleEffect(construction == viewModel.selectedConstruction ? 1.4 : 1.0)
                            .animation(.bouncy(duration: 0.5, extraBounce: 0.2),
                                       value: construction == viewModel.selectedConstruction)
                            .onTapGesture {
                                viewModel.selectedConstruction = construction
                                //viewModel.position = construction.coordinates

                            }
                    }
                }
            }
            if viewModel.selectedConstruction != nil {
                LocationPreview(construction: viewModel.selectedConstruction!) {
                    
                } seeDetails: {
                    routerManager.push(to: .detailView(construction: viewModel.selectedConstruction!))
                    print("to dando push")
                }
            }
        }
    }
}

#Preview {
    MapView()
}
