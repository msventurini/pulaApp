//
//  ProxDias.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct ProxDias: View {
    var eventList: [Event]
    
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
                ScrollView(.horizontal){
                    HStack{
                        ForEach(eventList){ event in
                            ZStack(alignment: .bottomTrailing){
                                Image(event.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height:185)
                                    .cornerRadius(8)
                                    .padding(.trailing)
                                
                                ZStack{
                                    Circle()
                                        .colorInvert()
                                        .frame(height: 30)
                                    
                                    if event.isSaved {
                                        Image(systemName: "bookmark.fill")
                                            .foregroundColor(Color.blue)
                                        
                                    } else {
                                        Image(systemName: "bookmark")
                                            .foregroundColor(Color.blue)
                                    }
                                }
                                .padding(.bottom, 4.0)
                                .padding(.trailing, 21)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ProxDias_Previews: PreviewProvider {
    static var previews: some View {
        ProxDias(eventList: EventList.events)
    }
}
