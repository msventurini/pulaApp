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
        GeometryReader { geometry in
            HStack {
                
                
                Image(String(event.image))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.height/15.6, height: geometry.size.height/17.5)
                    .cornerRadius(geometry.size.height/100)
                    
                VStack (alignment: .leading){
                    Text(event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)))
                        .font(.body)
                        .bold()
                    Text(event.name)
                        .font(.body)
                }
            }
            .frame(width: geometry.size.width * 0.35)
            .background(.red)
        }
        
        
        
        
        
    }
    
    
    
    
    struct MapIcon_Previews: PreviewProvider {
        static var previews: some View {
            MapIcon(event: EventList.events[0])
        }
    }
}
