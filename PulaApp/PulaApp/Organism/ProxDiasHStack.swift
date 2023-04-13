//
//  ProxDias.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct ProxDiasHStack: View {
    @State var eventList: [Event]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack {
                    Text("Nos Próximos Dias")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    NavigationLink(destination: CategoryView()){
                        Text("Ver Tudo")//mudar o destino aqui
                            .foregroundColor(Color.blue)
                            .padding(.trailing)
                    }
                }
                .padding(.top)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(eventList){ event in
                            ProxDias(event: event)
                        }
                    }
                }
            }
        }
    }
}

struct ProxDiasHStack_Previews: PreviewProvider {
    static var previews: some View {
        ProxDiasHStack(eventList: EventList.events)
    }
}
