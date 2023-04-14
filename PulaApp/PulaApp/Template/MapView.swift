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
                        x: geometry.size.width * 0.48,
                        y: geometry.size.height * 0.05
                    )
                
                LocalInformationView(event: EventList.events[1])
                    .offset(
                        x: geometry.size.width * 0.17,
                        y: geometry.size.height * 0.215)
                
                LocalInformationView(event: EventList.events[2])
                    .offset(
                        x: geometry.size.width * 0.57,
                        y: geometry.size.height * 0.38)
                
                LocalInformationView(event: EventList.events[3])
                    .offset(
                        x: geometry.size.width * 0.13,
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
