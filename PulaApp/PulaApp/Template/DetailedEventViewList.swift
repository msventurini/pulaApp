//
//  DetailedEventViewList.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 14/04/23.
//

import SwiftUI

struct DetailedEventViewList: View {
    
    var events: [Event]
    var viewTitle: String
    
    var body: some View {
        
        GeometryReader { geometry in
            NavigationStack{
                ScrollView{
                    VStack{
                        ForEach(events) {event in
                            LargeEventIcon(event: event, width: geometry.size.width * 0.9, height: geometry.size.height * 0.3)
                        }
                        
                        
                    }
                }
            }
            .navigationTitle(viewTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            
            
            
        }
        
        
        
        
        
    }
}

struct DetailedEventViewList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedEventViewList(events: EventList.events, viewTitle: "teste")
    }
}
