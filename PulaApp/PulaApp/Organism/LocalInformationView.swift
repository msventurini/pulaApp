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
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: viewHeight*2, height: viewHeight)
                    .colorInvert()
                
                RoundedRectangle(cornerRadius: 5)
                    .rotation(Angle(degrees: 45))
                    .frame(width: viewHeight/2, height: viewHeight/2)
                    .offset(y:30)
                    .colorInvert()
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
