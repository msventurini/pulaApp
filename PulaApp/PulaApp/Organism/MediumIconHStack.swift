//
//  MediumIconHStack.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 14/04/23.
//

import SwiftUI

struct MediumIconHStack: View {
    var eventList: [Event]
    var eventsType: String
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                HStack {
                    Text(eventsType)
                        .font(.title2)
                    .fontWeight(.semibold)
                    
                    Spacer()
                    NavigationLink(destination: DetailedEventViewList(events: eventList, viewTitle: eventsType)){
                        Text("Ver Tudo")//mudar esse destino aqui
                            .foregroundColor(Color.blue)
                            .padding(.trailing)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(eventList){ event in
                            destaqueView(event: event)
                        }
                    }
                }
            }
        }
    }
}

struct MediumIconHStack_Previews: PreviewProvider {
    static var previews: some View {
        MediumIconHStack(eventList: EventList.events , eventsType: "Destaques")
    }
}
