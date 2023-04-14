//
//  MapView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 12/04/23.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("mapa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                                
                LocalInformationView(event: EventList.events[0])
                    .offset(
                        x: geometry.size.width * 0.6,
                        y: geometry.size.height * 0.1
                    )
                
                LocalInformationView(event: EventList.events[1])
                    .offset(
                        x: geometry.size.width * 0.3,
                        y: geometry.size.height * 0.25)
                
                LocalInformationView(event: EventList.events[2])
                    .offset(
                        x: geometry.size.width * 0.75,
                        y: geometry.size.height * 0.4)
                
                LocalInformationView(event: EventList.events[3])
                    .offset(
                        x: geometry.size.width * 0.25,
                        y: geometry.size.height * 0.5)

                
                    
            }
            .frame(
                width: geometry.size.width,
                height: geometry.size.height
            )
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
