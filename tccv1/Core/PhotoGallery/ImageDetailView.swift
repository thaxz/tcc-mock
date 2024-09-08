//
//  ImageDetailView.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import SwiftUI

struct ImageDetailView: View {
    
    @StateObject var viewModel = ImageDetailViewModel()
    let photo: GalleryPhoto
    
    var body: some View {
        GeometryReader { geometry in
            let screenSize = geometry.size
            ZStack(alignment: .bottom) {
                Color.theme.blackBg
                VStack {
                    Spacer()
                    Image(photo.imageName)
                        .resizable()
                        .scaledToFit()
                        .padding(20)
                        .scaleEffect(viewModel.isZooming ? viewModel.currentScale : 1.0)
                        .offset(x: viewModel.offset.width, y: viewModel.offset.height)
                        .gesture(
                            viewModel.isZooming ?
                            SimultaneousGesture(
                                DragGesture()
                                    .onChanged { gesture in
                                        let imageSize = CGSize(width: screenSize.width, height: screenSize.height)
                                        viewModel.updateDrag(gesture: gesture,
                                                             imageSize: imageSize,
                                                             screenSize: screenSize)
                                    }
                                    .onEnded { _ in
                                        viewModel.endDrag()
                                    },
                                MagnificationGesture()
                                    .onChanged { scale in
                                        viewModel.updateZoom(scale: scale)
                                    }
                                    .onEnded { _ in
                                        viewModel.endZoom()
                                    }
                            ) : nil
                        )
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            viewModel.toggleZoom()
                        } label: {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 48, height: 48)
                                .foregroundStyle(.white)
                                .overlay {
                                    Image(systemName: viewModel.isZooming ? "minus.magnifyingglass"
                                          : "plus.magnifyingglass")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                }
                        }
                        .padding(20)
                    }
                    if !viewModel.isZooming {
                        ZStack(alignment: .topLeading){
                            Rectangle()
                                .frame(height: 170)
                                .opacity(0.5)
                            VStack(alignment: .leading, spacing: 12){
                                Text(photo.title)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20, weight: .bold))
                                Text(photo.subtitle)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .lineLimit(2)
                                    .lineSpacing(5)
                            }
                            .padding(20)
                            .padding(.top, 20)
                        }
                        .offset(y: viewModel.isZooming ? 200 : 0)
                        .transition(.move(edge: .bottom))
                    }
                }
            }
            .animation(.bouncy, value: viewModel.isZooming)
            .ignoresSafeArea()
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(photo: dev.mockGalleryPhoto)
    }
}
