//
//  SavedEvent.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct SavedEvent: View {
    @StateObject var event: Event
    
    var width: Double
    var height: Double
    
    var body: some View {
        ScrollView {
            
            if event.isSaved {

                LargeEventIcon(event: event, width: width, height: height)

            }
        }

    }
}

struct SavedEvent_Previews: PreviewProvider {
    static var previews: some View {
        SavedEvent(event: EventList.events[0], width: 390 * 0.9, height:  844 * 0.3)
    }
}
