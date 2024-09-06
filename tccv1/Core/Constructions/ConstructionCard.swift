//
//  GalleryCard.swift
//  tccv1
//
//  Created by thaxz on 27/08/24.
//

import SwiftUI

struct ConstructionCard: View {
    let construction: Construction
    var body: some View {
        VStack(spacing: 0){
            Image(construction.imageNames.first ?? "unavailableImg")
                .resizable()
                .frame(height: 180)
                .cornerRadius(8, corners: [.topLeft, .topRight])
            ZStack(alignment: .topLeading){
                Rectangle()
                    .border(width: 1, edges: [.bottom, .leading, .trailing], color: .theme.stroke)
                    .cornerRadius(12, corners: [.bottomLeft, .bottomRight])
                    .foregroundStyle(Color.theme.rowBg)
                VStack(alignment: .leading, spacing: 8){
                    Text(construction.name)
                        .foregroundStyle(Color.theme.label)
                        .font(.system(size: 16, weight: .semibold))
                    Text(construction.description)
                        .foregroundStyle(Color.theme.label)
                        .font(.system(size: 12, weight: .regular))
                        .lineSpacing(5)
                        .lineLimit(3)
                    categoriesSection
                }
                .padding([.horizontal, .top], 16)
            }
            .frame(height: 160)
        }
        
    }
}

extension ConstructionCard {
    
    var categoriesSection: some View {
        HStack{
            ForEach(construction.categories, id: \.self) { category in
                Text(category)
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
        }
        .padding(.top, 8)
    }
    
    
}

struct GalleryCard_Previews: PreviewProvider {
    static var previews: some View {
        ConstructionCard(construction: dev.mockConstruction)
            .padding(20)
    }
}
