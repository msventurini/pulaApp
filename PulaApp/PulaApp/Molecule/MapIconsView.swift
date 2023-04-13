//
//  MapIconsDemo.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 12/04/23.
//

import SwiftUI

struct MapIcon: View {
    
    
    var event: Event
    
    var body: some View {
        
        HStack {
            Image(String(event.image))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 54, height: 48)
                .cornerRadius(4)
                
            VStack (alignment: .leading){
                Text(event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)))
                    .font(.body)
                    .bold()
                Text(event.name)
                    .font(.body)
            }
        }
        .frame(width: 130, height: 48)
        
        
        
        
    }
    
    
    
    
    struct MapIcon_Previews: PreviewProvider {
        static var previews: some View {
            MapIcon(event: EventList.events[0])
        }
    }
}
