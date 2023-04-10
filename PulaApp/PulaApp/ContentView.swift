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
            
                
                HStack {
                    Image("fig1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    VStack (alignment: .center){
                        Text("Data")
                            .font(.body)
                            .bold()

                        Text("Nome")
                            .font(.body)
                            
                    }
                    
                }
                .frame(height: 48)
                
                
            
            

                            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
