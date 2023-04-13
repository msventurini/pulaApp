//
//  SavedEvent.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct SavedEvent: View {
    var event: Event
    
    var body: some View {
        
        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
        
        NavigationStack{
            VStack(alignment: .leading){
                ZStack(alignment: .bottomTrailing){
                    Image(event.image)
                        .resizable()//acertar esses com as novas assets
                        .aspectRatio(contentMode: .fill)
                        .scaledToFit()//
                        .frame(height:95)
                        .cornerRadius(8)
                    
                    ZStack{
                        Circle()
                            .colorInvert()
                            .frame(height: 30)
                        
                        if event.isSaved {
                            Image(systemName: "bookmark.fill")
                                .foregroundColor(Color.blue)
                            
                        } else {
                            Image(systemName: "bookmark")
                                .foregroundColor(Color.blue)
                        }
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
            .padding(.trailing)
            .aspectRatio(contentMode: .fit)
        }
    }
}

struct SavedEvent_Previews: PreviewProvider {
    static var previews: some View {
        SavedEvent(event: EventList.events[1])
    }
}
