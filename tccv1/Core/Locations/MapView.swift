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
    @State private var triggerMapAnimation: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            mapSection
            locationSection
            if viewModel.selectedConstruction != nil {
                previewSection
                    .transition(.opacity)
            }
        }
        .animation(.easeOut(duration: 1), value: triggerMapAnimation)
    }
}

extension MapView {
    
    var mapSection: some View {
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
                            triggerMapAnimation.toggle()
                        }
                }
            }
        }
    }
    
    var locationSection: some View {
        VStack(alignment: .trailing){
            Button {
                viewModel.resetMapPosition()
                viewModel.selectedConstruction = nil
                triggerMapAnimation.toggle()
            } label: {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(Color.theme.background)
                    .frame(width: 48 ,height: 48)
                    .overlay {
                        Image(systemName: "location.fill")
                            .font(.title2)
                    }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.horizontal, 24)
        .padding(.top, 24)
    }
    
    var previewSection: some View {
        ZStack(alignment: .topTrailing){
            LocationPreview(construction: viewModel.selectedConstruction!) {
                viewModel.redirectTo(construction: viewModel.selectedConstruction!)
            } seeDetails: {
                routerManager.push(to: .detailView(construction: viewModel.selectedConstruction!))
            }
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .foregroundStyle(Color.gray.opacity(0.4))
                .frame(width: 24, height: 24)
                .padding(16)
                .padding(.horizontal, 16)
                .onTapGesture {
                    viewModel.selectedConstruction = nil
                }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    MapView()
}
