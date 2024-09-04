//
//  TimelineView.swift
//  tccv1
//
//  Created by thaxz on 15/08/24.
//

import SwiftUI

// TODO: doc && filter by year
struct TimelineView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    @StateObject private var viewModel = TimelineViewModel()
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
        VStack(alignment: .leading, spacing: 2){
            Text(year)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color.theme.label)
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(Color.theme.stroke)
        }
    }
}

#Preview {
    TimelineView()
}
