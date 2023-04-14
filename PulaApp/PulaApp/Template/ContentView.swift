//
//  ContentView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
            
            TabView{
                MainView()
                    .tabItem {
                        Label("Principal", systemImage: "calendar")
                    }
                
                FavoritesView(events: EventList.events)
                    .tabItem {
                        Label("Salvos", systemImage: "bookmark")
                    }
                MapView()
                    .tabItem {
                        Label("Mapa", systemImage: "map")
                    }
            }
            

            
            
            
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
