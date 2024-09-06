//
//  DetailView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI
import MapKit

struct DetailView: View {
    let construction: Construction
    @State var position: MapCameraPosition = .automatic
    
    init(construction: Construction) {
        self.construction = construction
        self.position = .region(MKCoordinateRegion(
            center: construction.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    }
    
    var body: some View {
        ScrollView(){
            ImageScroller(imageNames: construction.imageNames)
            VStack(alignment: .leading, spacing: 20){
                Text(construction.name)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(Color.theme.label)
                    .lineLimit(2)
                    .padding(.top, 8)
                Text(construction.description)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(Color.theme.label)
                
                historySection
                Text("Tags")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(Color.theme.label)
                categoriesSection
                Text("Atributos")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(Color.theme.label)
                Text("alguma hstack com atributos")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(Color.theme.label)
                
                Text("Localização")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(Color.theme.label)
                mapSection
            }
            .padding(.horizontal, 20)
        }
        .toolbarBackground(.hidden, for: .navigationBar)
        .ignoresSafeArea(edges: .top)
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
    
    var historySection: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("História")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(Color.theme.label)
            Text(construction.history)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(Color.theme.label)
        }
    }
    
    var mapSection: some View {
        Map(position: $position) {
            Annotation(construction.name, coordinate: construction.coordinates) {
                MapAnnotationView(color: .blue)
            }
        }
        .mapStyle(.imagery(elevation: .realistic))
        .allowsHitTesting(false)
        .frame(height: 150)
        .cornerRadius(8)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(construction: dev.mockConstruction)
    }
}
