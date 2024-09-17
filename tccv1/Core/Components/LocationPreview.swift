//
//  LocationPreview.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import SwiftUI

struct LocationPreview: View {
    let construction: Construction
    let seeRoutes: () -> ()
    let seeDetails: () -> ()
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(Color.theme.background)
            VStack(alignment: .leading){
                HStack(spacing: 16){
                    Image(construction.imageNames.first ?? "mockImg1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipped()
                        .cornerRadius(8, corners: .allCorners)
                    VStack(alignment: .leading ,spacing: 8){
                        Text(construction.name)
                            .foregroundStyle(Color.theme.label)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text(construction.description)
                            .lineLimit(2)
                            .foregroundStyle(Color.theme.subtitle)
                            .font(.system(size: 12, weight: .regular))
                    }
                }
                HStack(spacing: 16){
                    SmallButton(title: "Ver Rotas", type: .secondary) {
                        seeRoutes()
                    }
                    SmallButton(title: "Ver Detalhes", type: .primary) {
                        seeDetails()
                    }
                }
                .padding(.top, 8)
            }
            .padding(16)
        }
        .padding(.horizontal, 16)
        .frame(height: 170)
    }
}

struct LocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreview(construction: dev.mockConstruction, seeRoutes: {}, seeDetails: {})
    }
}

