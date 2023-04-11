//
//  ContentView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            
            ForEach(EventList.events) { event in
                HStack {
                    Image(String(event.image))
//                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    VStack (alignment: .center){
                        Text("Data")
                            .font(.body)
                            .bold()
                        
                        Text("Nome")
                            .font(.body)
                    }
                }
            }
            
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
