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
                .frame(height: 250)
            VStack(alignment: .leading, spacing: 16){
                Image(construction.imageNames.first ?? "mockImg1")
                    .frame(height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                HStack {
                    Text(construction.name)
                        .foregroundStyle(Color.theme.label)
                        .font(.system(size: 16, weight: .semibold))
                    Spacer()
                    Text(construction.categories.first ?? "Recife")
                        .foregroundStyle(Color.theme.darkBlue)
                        .font(.system(size: 12, weight: .regular))
                        .padding(.vertical, 6)
                        .padding(.horizontal, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(Color.theme.lightBlue)
                                .frame(height: 25)

                        )
                }
                Text(construction.description)
                    .lineLimit(2)
                    .foregroundStyle(Color.theme.subtitle)
                    .font(.system(size: 12, weight: .regular))
                HStack(spacing: 16){
                    SmallButton(title: "Ver Rotas", type: .secondary) {
                        seeRoutes()
                    }
                    SmallButton(title: "Ver Detalhes", type: .primary) {
                       seeDetails()
                    }
                }
            }
            .padding(16)
        }
    }
}

struct LocationPreview_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreview(construction: dev.mockConstruction, seeRoutes: {}, seeDetails: {})
    }
}

