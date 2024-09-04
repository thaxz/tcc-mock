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
            VStack(alignment: .leading, spacing: 20){
                ImageScroller(imageNames: construction.imageNames)
                    .padding(.top, 16)
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
                historySection
                Text("Localização")
                    .font(.system(size: 24, weight: .bold))
                mapSection
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
    
    var historySection: some View {
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
