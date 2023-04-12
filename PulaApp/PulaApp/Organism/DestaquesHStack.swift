//
//  DestaquesHStack.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct DestaquesHStack: View {
    
    var eventList: [Event]
    var eventsType: String
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text(eventsType)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(eventList){ event in
                            //var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
                            destaqueView(event: event)
                        }
                    }
                }
            }
        }
    }
}


struct DestaquesHStack_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesHStack(eventList: EventList.events , eventsType: "Destaques")
    }
}
