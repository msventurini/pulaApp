//
//  MapIconsDemo.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 12/04/23.
//

import SwiftUI

struct MapIcon: View {
    
    
    var event: Event
    var widht: Double
    var height: Double
    
    var body: some View {
        
        HStack {
            
            
            Image(String(event.image))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: height/15.6, height: height/17.5)
                .cornerRadius(height/100)
                
            VStack (alignment: .leading){
                Text(event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)))
                    .font(.body)
                    .bold()
                Text(event.name)
                    .font(.body)
            }
        }
        .frame(width: height/6.5, height: height/17.5)
        
        
        
        
    }
    
    
    
    
    struct MapIcon_Previews: PreviewProvider {
        static var previews: some View {
            MapIcon(event: EventList.events[0], widht: 393, height: 842.59)
        }
    }
}
