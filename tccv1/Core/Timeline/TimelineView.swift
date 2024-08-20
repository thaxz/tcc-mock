//
//  TimelineView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

struct TimelineView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    var body: some View {
        VStack {
            MockButton(text: "Push view galeria") {
                routerManager.push(to: .galleryView)
            }
            .padding(32)
            HStack(spacing: 16){
                Image("mockImg")
                    .resizable()
                    .frame(width: 160, height: 130)
                VStack(alignment: .leading, spacing: 12){
                    Text("Construção da Igreja de São Pedro")
                        .font(.system(size: 20, weight: .semibold))
                        .lineSpacing(6)
                        .lineLimit(3)
                    Text("12/13/1989")
                        .font(.system(size: 14, weight: .regular))
                        .lineLimit(1)
                }
            }
            .padding(.trailing, 16)
            .padding(16)
        }
        .navigationTitle("Timeline")
    }
}

//MARK: - Components
// TODO: row && header // using timelineEvent
extension TimelineView {
    
    
    
    
}

#Preview {
    TimelineView()
}
