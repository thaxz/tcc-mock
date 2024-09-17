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
        ZStack(alignment: .topTrailing){
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
            .padding(.horizontal)
            .padding(.top)
            Button {
                routerManager.push(to: .infoView)
            } label: {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(Color.theme.background)
                    .frame(width: 40 ,height: 40)
                    .overlay {
                        Image(systemName: "questionmark.circle.fill")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
            }
            .padding(36)
        }
    }
}


#Preview {
    GalleryView()
}
