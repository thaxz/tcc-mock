//
//  DetailView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct DetailView: View {
    let construction: Construction
    var body: some View {
        ScrollView(){
            VStack(spacing: 20){
                ImageScroller(imageNames: construction.imageNames)
                ZStack(alignment: .topLeading){
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(Color.theme.background)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.theme.stroke, lineWidth: 2)
                        )
                    VStack(alignment: .leading, spacing: 16) {
                        Text(construction.name)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(Color.theme.label)
                        Text(construction.description)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(Color.theme.subtitle)
                        Text("Tags")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(Color.theme.label)
                        categoriesSection
                    }
                    .padding(16)
                }
                .frame(minHeight: 260)
                ZStack(alignment: .topLeading){
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(Color.theme.background)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.theme.stroke, lineWidth: 2)
                        )
                    VStack(alignment: .leading, spacing: 16){
                        Text("História")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(Color.theme.label)
                        Text(construction.history)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(Color.theme.subtitle)
                    }
                    .padding(16)
                }
                .frame(minHeight: 260)
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}

//MARK: Components

extension DetailView {

    var categoriesSection: some View {
        HStack {
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
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(construction: dev.mockConstruction)
    }
}
