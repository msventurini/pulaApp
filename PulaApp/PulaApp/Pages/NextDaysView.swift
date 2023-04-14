//
//  NextDaysView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 14/04/23.
//

import SwiftUI

struct NextDaysView: View {
    
    var events: [Event]
    
    var body: some View {
        DetailedEventViewList(events: events)
    }
}

struct NextDaysView_Previews: PreviewProvider {
    static var previews: some View {
        NextDaysView(events: EventList.events)
    }
}
