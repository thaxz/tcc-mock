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
                    VStack(spacing: 12) {
                        
                    }
                }
                .frame(minHeight: 260)
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(construction: dev.mockConstruction)
    }
}
