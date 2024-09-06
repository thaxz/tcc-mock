//
//  GalleryView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct ConstructionsView: View {
    
    @EnvironmentObject private var routerManager: NavigationRouter
    @StateObject private var viewModel: ConstructionsViewModel = ConstructionsViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                ForEach(viewModel.constructions){ construction in
                    ConstructionCard(construction: construction)
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
        ConstructionsView()
    }
}
