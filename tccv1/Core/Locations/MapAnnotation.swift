//
//  MapAnnotation.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import SwiftUI

struct MapAnnotationView: View {
    let color: Color
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: "building.columns.fill")
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.white)
                .padding(8)
                .background(color)
                .clipShape(Circle())

            Image(systemName: "triangle.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
    }
}

#Preview {
    MapAnnotationView(color: .black)
}
