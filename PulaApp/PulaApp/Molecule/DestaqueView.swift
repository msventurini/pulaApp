//
//  DestaqueView.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct destaqueView: View {
    @StateObject var event: Event
    
    var body: some View {
        
        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
        
        NavigationStack{
            VStack(alignment: .leading){
                ZStack(alignment: .bottomTrailing){
                    NavigationLink(destination: DetailView(event: event)){
                        
                        Image(event.image)
                            .resizable()//acertar esses com as novas assets
                            .aspectRatio(contentMode: .fill)
                            .scaledToFit()//
                            .frame(height:95)
                            .cornerRadius(8)
                    }
                    
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
            .padding(.trailing)
            .aspectRatio(contentMode: .fit)
        }
    }
}

struct destaqueView_Previews: PreviewProvider {
    static var previews: some View {
        destaqueView(event: EventList.events[0])
    }
}
