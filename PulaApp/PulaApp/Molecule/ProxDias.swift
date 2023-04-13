//
//  ProxDias.swift
//  PulaApp
//
//  Created by Felippo Stedile on 13/04/23.
//

import SwiftUI

struct ProxDias: View {
    @StateObject var event: Event
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(event.image)
                .resizable()
                .scaledToFit()
                .frame(height:185)
                .cornerRadius(8)
                .padding(.trailing)
            
            ZStack{
                Circle()
                    .colorInvert()
                    .frame(height: 30)
                
                SaveButton(isSet: $event.isSaved)
            }
            .padding(.bottom, 4.0)
            .padding(.trailing, 21)
        }
    }
}

struct ProxDias_Previews: PreviewProvider {
    static var previews: some View {
        ProxDias(event: EventList.events[2])
    }
}
