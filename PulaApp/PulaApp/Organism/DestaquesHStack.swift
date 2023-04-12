//
//  DestaquesHStack.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct DestaquesHStack: View {
    
    var eventList: [Event]
    var eventsType: String
    
    var body: some View {
        VStack(alignment: .leading){
            //HStack{
                Text(eventsType)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.bottom)
                //Spacer()
                //Button("Ver Tudo"){
                    
                //}
                //.foregroundColor(Color(.systemBlue))
                //.padding(.trailing)
            //}
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(eventList){ event in
                        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
                        
                        
                        
                        destaqueView(eventName: event.name, imageName: event.image, date: date, location: event.location)
                    }
                }
            }
            //.padding()
        }
    }
}


struct DestaquesHStack_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesHStack(eventList: EventList.events, eventsType: "Destaques")
    }
}
