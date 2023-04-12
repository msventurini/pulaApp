//
//  MainView.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct MainView: View {
    @State private var query: String = ""
    var body: some View {
        
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Categorias")
                        .font(.title2)
                        .fontWeight(.semibold)
                    ScrollView(.horizontal){
                        HStack{
                            HStack(spacing: 16) {
                                ForEach(0...8, id:\.self) {
                                    CategoryIcon(category: categories[$0], size: .medium)
                                }
                            }
                        }
                    }
                    
                    ProxDias(eventList: EventList.events)
                    
                    DestaquesHStack(eventList: EventList.events, eventsType: "Destaques")
                        .padding(.top)
                }
                
            }
            .padding([.top, .leading])
            .navigationTitle("Boas Vindas!")
        }
        .searchable(text: $query)
        .accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
