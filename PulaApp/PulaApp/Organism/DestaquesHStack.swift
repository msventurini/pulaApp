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
                HStack {
                    Text(eventsType)
                        .font(.title2)
                    .fontWeight(.semibold)
                    
                    Spacer()
                    NavigationLink(destination: CategoryView()){
                        Text("Ver Tudo")//mudar esse destino aqui
                            .foregroundColor(Color.blue)
                            .padding(.trailing)
                    }
                }
                
                ScrollView(.horizontal){
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


struct DestaquesHStack_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesHStack(eventList: EventList.events , eventsType: "Destaques")
    }
}
