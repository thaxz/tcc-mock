//
//  TimelineView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

// TODO: doc
struct TimelineView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    @ObservedObject var viewModel = TimelineViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing: 24){
                ForEach(viewModel.timelineSections){ section in
                    headerSection(year: section.year)
                    ForEach(section.events) { event in
                        TimelineRow(event: event)
                    }
                }
            }
        }
        .padding(20)
        .navigationTitle("Timeline")
    }
}

//MARK: - Components
extension TimelineView {
    
    func headerSection(year: String) -> some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundStyle(Color.theme.rowBg)
                .cornerRadius(8, corners: [.topLeft, .topRight])
                .border(width: 2, edges: [.bottom], color: .theme.stroke)
            Text(year)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color.theme.label)
                .padding(.leading, 8)
        }
        .frame(height: 40)
    }
}

#Preview {
    TimelineView()
}
