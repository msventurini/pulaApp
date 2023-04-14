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
            ScrollView{
                VStack{
                    MediumIconHStack(eventList: EventList.events, eventsType: "Destaques")
                        .padding(.vertical)
                    
                    MediumIconHStack(eventList: EventList.events, eventsType: "Neste Fim de Semana")
                        .padding(.vertical)
                    MediumIconHStack(eventList: EventList.events, eventsType: "Na Próxima Semana")
                        .padding(.vertical)
                }
                .padding(.leading)
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct FestivaisPage_Previews: PreviewProvider {
    static var previews: some View {
        FestivaisPage(title: "Festivais")
    }
}
