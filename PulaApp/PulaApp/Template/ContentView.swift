//
//  ContentView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            TabView{
                MainView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Principal")
                    }
                
                FavoritesView()
                    .tabItem {
                        //pq esse bookmark não está vazado?
                        Image(systemName: "bookmark")
                        Text("Salvos")
                    }
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Mapa")
                    }
            }
            

            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}