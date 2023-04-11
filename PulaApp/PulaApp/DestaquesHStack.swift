//
//  DestaquesHStack.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct DestaquesHStack: View {
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(EventList.events){ event in
                    
                    destaqueView(eventName: event.name, imageName: event.image, date: date, location: event.location)
                }
            }
        }
    }
}


struct DestaquesHStack_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesHStack()
    }
}
