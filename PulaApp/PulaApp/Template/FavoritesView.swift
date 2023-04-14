//
//  FavoritesView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 12/04/23.
//

import SwiftUI

struct FavoritesView: View {
    var events: [Event]
    
    var body: some View {
        
        GeometryReader { geometry in
            
            NavigationStack{
                ScrollView{
                    VStack{
                        ForEach(events) {event in
                            SavedEvent(event: event, width: geometry.size.width * 0.9, height: geometry.size.height * 0.3)
                        }
                        
                        
                    }
                    .navigationTitle("Salvos")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(.visible, for: .navigationBar)
                }
            }


            
            
        }
        
        
    
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(events: EventList.events)
    }
}
