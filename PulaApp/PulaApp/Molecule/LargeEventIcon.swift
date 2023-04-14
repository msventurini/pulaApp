//
//  LargeEventIcon.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 14/04/23.
//

import SwiftUI

struct LargeEventIcon: View {
    @StateObject var event: Event
    
    var width: Double
    var height: Double
    
    var body: some View {
        
        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits)) + " | " + event.date.formatted(.dateTime.hour())
        
        NavigationStack{

                VStack(alignment: .leading){
                    ZStack(alignment: .bottomTrailing){
                        Image(event.image)
                            .resizable()//acertar esses com as novas assets
                            .scaledToFill()//
                            .frame(height:height/2)
                            .clipped()
                        
                        ZStack{
                            Circle()
                                .colorInvert()
                                .frame(height: 30)
                            
                            SaveButton(isSet: $event.isSaved)
                        }
                        .padding([.bottom, .trailing], 4.0)
                    }
                    
                    VStack (alignment: .leading){
                        Text(date)
                            .font(.callout)
                            .fontWeight(.bold)
                            .padding([.top, .leading])

                        Spacer()
                        
                        Text(event.name)
                            .font(.body)
                            .fontWeight(.regular)
                            .padding(.horizontal)

                        
                        Text(event.location)
                            .font(.caption)
                            .fontWeight(.regular)
                            .padding(.horizontal)
                        Spacer()

                    }
                    .frame(height: height/2, alignment: .top)
                    
                }
                .aspectRatio(contentMode: .fit)
                .background(
                    .background,
                    in: RoundedRectangle(cornerRadius: 4)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                )
                .padding()
                .shadow(radius: 10)
                
            
        }
    }
}

struct LargeEventIcon_Previews: PreviewProvider {
    static var previews: some View {
        LargeEventIcon(event: EventList.events[1], width: 390 * 0.9, height:  844 * 0.3)
    }
}
