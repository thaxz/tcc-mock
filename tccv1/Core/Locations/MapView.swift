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
        ZStack(alignment: .bottom) {
            mapLayer
            locationSection
            if viewModel.selectedConstruction != nil {
                previewSection
                    .transition(.opacity)
            }
        }
    }
    
    var mapLayer: some View {
        Map(coordinateRegion: $viewModel.mapRegion, annotationItems: viewModel.constructions) { construction in
            MapAnnotation(coordinate: construction.coordinates) {
                MapAnnotationView(color: .black)
                    .scaleEffect(viewModel.selectedConstruction == construction ? 1.4 : 1.0)
                    .onTapGesture {
                        viewModel.showConstruction(construction: construction)
                    }
            }
        }
    }
    
    var locationSection: some View {
        VStack(alignment: .trailing){
            Button {
                viewModel.resetMapPosition()
                withAnimation {
                    viewModel.selectedConstruction = nil
                }
            } label: {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(Color.theme.background)
                    .frame(width: 48, height: 48)
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
        ZStack(alignment: .topTrailing) {
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
