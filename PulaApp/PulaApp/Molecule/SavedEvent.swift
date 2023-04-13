//
//  SavedEvent.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct SavedEvent: View {
    @StateObject var event: Event
    
    var width: Double
    var height: Double
    
    var body: some View {
        
        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
        
        NavigationStack{
            if event.isSaved {
                VStack(alignment: .leading){
                    ZStack(alignment: .bottomTrailing){
                        Image(event.image)
                            .resizable()//acertar esses com as novas assets
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()//
                            .frame(width: width * 0.88,height:height/6)
                            .cornerRadius(8)
                        
                        ZStack{
                            Circle()
                                .colorInvert()
                                .frame(height: 30)
                            
                            SaveButton(isSet: $event.isSaved)
                        }
                        .padding([.bottom, .trailing], 4.0)
                    }
                    
                    Text(date)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .padding(.vertical, 1.0)
                    
                    Text(event.name)
                        .font(.body)
                        .fontWeight(.regular)
                    
                    Text(event.location)
                        .font(.caption)
                        .fontWeight(.regular)
                    
                }
//                .padding(.trailing)
                .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct SavedEvent_Previews: PreviewProvider {
    static var previews: some View {
        SavedEvent(event: EventList.events[1], width: 390, height:  844)
    }
}
