//
//  DestaquesPage.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct FestivaisPage: View {
    var title: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    DestaquesHStack(eventList: EventList.events, eventsType: "Destaques")
                        .padding(.vertical)
                    
                    DestaquesHStack(eventList: EventList.events, eventsType: "Neste Fim de Semana")
                        .padding(.vertical)
                    DestaquesHStack(eventList: EventList.events, eventsType: "Na Próxima Semana")
                        .padding(.vertical)
                }
                .padding(.leading)
            }
            .navigationTitle(title)
        }
    }
}

struct FestivaisPage_Previews: PreviewProvider {
    static var previews: some View {
        FestivaisPage(title: "Festivais")
    }
}
