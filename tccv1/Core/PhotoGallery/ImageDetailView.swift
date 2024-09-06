//
//  ImageDetailView.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import SwiftUI

//todo
struct ImageDetailView: View {
    
    @State var isZooming: Bool = false
    let photo: GalleryPhoto
    
    var body: some View {
        ZStack(alignment: .bottom){
            Color.theme.blackBg
            VStack(){
                Spacer()
                Image(photo.imageName)
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        isZooming.toggle()
                    } label: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                            .overlay {
                                Image(systemName: "plus.magnifyingglass")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                            }
                    }
                    .padding(20)
                }
                if !isZooming {
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
                    .offset(y: isZooming ? 200 : 0)
                    .transition(.move(edge: .bottom))
                }
            }
        }
        .animation(.bouncy, value: isZooming)
        .ignoresSafeArea()
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(photo: dev.mockGalleryPhoto)
    }
}
