//
//  LocalInformationView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 13/04/23.
//

import SwiftUI

struct LocalInformationView: View {
    
    var event: Event
    var width: Double
    var height: Double

    var body: some View {
        ZStack {
            ZStack {
                
                var viewHeight: Double = height / 10.5
                
                GeometryReader { geometry in
                
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: geometry.size.width * 0.35,height: geometry.size.height * 0.1)
                        //.scaledToFit()
//                        .colorInvert()
                    
                    RoundedRectangle(cornerRadius: 5)
                        .rotation(Angle(degrees: 45))
                        .frame(width: geometry.size.width * 0.1, height: geometry.size.width * 0.1)
                        .offset(x: geometry.size.width * 0.125, y: geometry.size.height * 0.1 - (geometry.size.width * 0.1)/1.75) //x = 0.35 / 2 - metade do quadrado
                        .colorInvert()
                }
                
                
            }
            MapIcon(event: event,widht: width, height: height)

        }
        
    }
}

struct LocalInformationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalInformationView(event: EventList.events[0], width: 393, height: 842.59)
    }
}
