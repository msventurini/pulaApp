//
//  MapIconsDemo.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 12/04/23.
//

import SwiftUI

struct MapIcon: View {
    
    
    var event: Event
    var baloonWidth: Double
    var baloonHeight: Double
    
    var body: some View {
        GeometryReader { geometry in
            HStack (alignment: .center){
                NavigationStack {
                    NavigationLink(destination: DetailView(event: event)) {
                        Image(String(event.image))
                            .resizable()
                            .scaledToFill()
                            .frame(width: baloonWidth * 0.9 * 0.5, height: baloonHeight ,alignment: .center)
                            .clipped()
                            .cornerRadius(10)
                            //.cornerRadius(geometry.size.height/100)
                            //.position(x: baloonWidth * 0.28)

                
                    
                VStack (alignment: .leading){
                    Text(event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)))
                        .font(.body)
                        .bold()
                        
                        
                    Text(event.name)
                        .font(.body)
                        .lineLimit(1)
                }
                .frame(width: baloonWidth  * 0.9 * 0.45,alignment: .center)
                //.position(x: baloonWidth * 0.07 + (baloonWidth * 0.3/2))

            }
            .frame(width: baloonWidth)
            
        }
            }
        }
        
        
        
        
        
        
    }
    
    
    
    
    struct MapIcon_Previews: PreviewProvider {
                
        static var previews: some View {
            MapIcon(event: EventList.events[0], baloonWidth: UIScreen.main.bounds.size.width * 0.35, baloonHeight: UIScreen.main.bounds.size.height * 0.1)
        }
    }
}
