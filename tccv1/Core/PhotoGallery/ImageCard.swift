//
//  ImageCard.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import SwiftUI

// todo: change aspect ratio
struct ImageCard: View {
    let galleryPhoto: GalleryPhoto
    var body: some View {
        ZStack(alignment: .bottom){
            Image(galleryPhoto.imageName)
                .resizable()
                .cornerRadius(12)
            Rectangle()
                .cornerRadius(12, corners: [.bottomRight, .bottomLeft])
                .frame(height: 80)
                .foregroundStyle(.black.opacity(0.6))
                .overlay(alignment: .leading){
                    Text(galleryPhoto.title)
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .semibold))
                        .lineLimit(2)
                        .padding(.horizontal, 8)
                }
            
        }
        .frame(width: 170, height: 240)
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            ImageCard(galleryPhoto: dev.mockGalleryPhoto)
            ImageCard(galleryPhoto: dev.mockGalleryPhoto)
        }
    }
}
