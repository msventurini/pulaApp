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
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("Categorias")
                            .font(.title2)
                        .fontWeight(.semibold)
                        Spacer()
                        NavigationLink(destination: CategoryView()){
                            Text("Ver Tudo")
                                .foregroundColor(Color.blue)
                                .padding(.trailing)
                        }
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            HStack(spacing: 16) {
                                ForEach(0...8, id:\.self) {
                                    CategoryIcon(category: categories[$0], size: .medium)
                                }
                            }
                        }
                    }
                    
                    ProxDiasHStack(eventList: EventList.events)
                    
                    DestaquesHStack(eventList: EventList.events, eventsType: "Destaques")
                        .padding(.top)
                }
                
            }
            .padding([.top, .leading])
            .navigationTitle("Boas Vindas!")
        }
        .searchable(text: $query)
        .accentColor(.primary)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
