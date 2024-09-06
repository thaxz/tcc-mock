//
//  GalleryView.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import SwiftUI

struct GalleryView: View {
    
    @EnvironmentObject private var routerManager: NavigationRouter
    @StateObject var viewModel: GalleryViewModel = GalleryViewModel()
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: viewModel.columns, spacing: 16) {
                ForEach(viewModel.photos) { photo in
                    ImageCard(galleryPhoto: photo)
                        .onTapGesture {
                            routerManager.push(to: .imageDetail(galleryPhoto: photo))
                        }
                }
            }
        } 
        .scrollIndicators(.hidden)
        .padding()
    }
}

#Preview {
    GalleryView()
}
