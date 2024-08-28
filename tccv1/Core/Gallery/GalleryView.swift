//
//  GalleryView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct GalleryView: View {
    
    @EnvironmentObject private var routerManager: NavigationRouter
    @StateObject private var viewModel: GalleryViewModel = GalleryViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                ForEach(viewModel.constructions){ construction in
                    GalleryCard(construction: construction)
                        .onTapGesture {
                            routerManager.push(to: .detailView(construction: construction))
                        }
                }
            }
            .padding(20)
        }
        .navigationTitle("Construções")
    }
}

#Preview {
    NavigationStack{
        GalleryView()
    }
}
