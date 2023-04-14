//
//  DetailView.swift
//  PulaApp
//
//  Created by Felippo Stedile on 13/04/23.
//

import SwiftUI

struct DetailView: View {
    var event: Event
    @State private var descriptionLimit: Bool = true
    @State private var groupLimit: Bool = true
    
    var body: some View {
        
        var date: String = event.date.formatted(.dateTime.day()) + "." + event.date.formatted(.dateTime.month(.twoDigits))
        
        var hour: String = event.date.formatted(.dateTime.hour())
        GeometryReader { geometry in

            ScrollView(showsIndicators: false){
            VStack(alignment: .leading) {
                ZStack{
                    Image(event.image)
                        .resizable()
                        .frame(height: geometry.size.width/2)
                        .clipped()
                        .scaledToFit()
                }
                Text(event.name + " | " + date)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, 24.0)
                
                VStack{
                    
                    HStack{
                        Image(systemName: "key.fill")
                            .frame(height:20)
                        VStack(alignment: .leading){
                            Text(event.location)
                                .font(.body)
                            Text(event.location1)
                                .font(.caption)
                        }
                        .fontWeight(.regular)
                    }
                    .padding(.leading, 27.0)
                    
                    HStack{
                        Image(systemName: "clock")
                            .frame(height:20)
                        VStack(alignment: .leading){
                            Text(date)
                                .font(.body)
                            
                            Text(hour)
                                .font(.caption)
                        }
                        .fontWeight(.regular)
                    }
                    .padding(.leading, 24.0)
                }
                
                
                Text("Descrição do Evento")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding([.top, .leading], 24.0)
                
                Text(event.description)
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(.horizontal, 24.0)
                    .lineLimit(descriptionLimit ? 5 : 100)
                
                Button(descriptionLimit ? "Ver Mais" : "Ver Menos") {
                    descriptionLimit.toggle()
                }
                .padding(.leading, 24.0)
                .padding(.top, 1)
                .foregroundColor(Color.blue)
                
                Text("Sobre o Grupo")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding([.top, .leading], 24.0)
                
                HStack{
                    Spacer()
                    Image(event.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 93)
                        .clipShape(Circle())
                    Spacer()
                }
                
                Text(event.description1) //mudar essa descrição para a descricao do grupo
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(.horizontal, 24.0)
                    .lineLimit(groupLimit ? 5 : 100)
                
                Button(groupLimit ? "Ver Mais" : "Ver Menos") {
                    groupLimit.toggle()
                }
                .padding(.leading, 24.0)
                .padding(.top, 1)
                .foregroundColor(Color.blue)
            }
            
        }
    }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(event: EventList.events[0])
    }
}
