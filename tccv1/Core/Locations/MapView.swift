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
                    Annotation(construction.name, coordinate: construction.coordinates,
                               anchor: .bottom) {
                        MapAnnotationView()
                            .scaleEffect(construction == viewModel.selectedConstruction ? 1.4 : 1.0)
                            .animation(.bouncy(duration: 0.5, extraBounce: 0.2),
                                       value: construction == viewModel.selectedConstruction)
                            .onTapGesture {
                                viewModel.selectedConstruction = construction
                                viewModel.updateMapRegion(construction: construction)
                            }
                    }
                }
            }
            if viewModel.selectedConstruction != nil {
                ZStack(alignment: .topTrailing){
                    LocationPreview(construction: viewModel.selectedConstruction!) {
                        //todo: routea
                    } seeDetails: {
                        routerManager.push(to: .detailView(construction: viewModel.selectedConstruction!))
                    }
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .foregroundStyle(Color.black)
                        .frame(width: 30, height: 30)
                        .padding(20)
                        .onTapGesture {
                            viewModel.selectedConstruction = nil
                        }
                }
                .padding()
            }
        }
    }
}

#Preview {
    MapView()
}
