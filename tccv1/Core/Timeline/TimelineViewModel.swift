//
//  TimelineViewModel.swift
//  tccv1
//
//  Created by thaxz on 21/08/24.
//

import Foundation

//TODO: logic && doc
@MainActor
final class TimelineViewModel: ObservableObject {
    
    @Published var timelineSections: [TimelineSection] = []
    
    init(){
        timelineSections = [
            TimelineSection(
                year: "1989",
                events: [TimelineEvent(
                    title: "I was born in 1989",
                    date: "13/12/1989",
                    headerImage: "mockImg"
                )]
            ),
            TimelineSection(
                year: "2014",
                events: [TimelineEvent(
                    title: "AOTY",
                    date: "27/10/2014",
                    headerImage: "mockImg"
                )]
            )
        ]
    }
}
