//
//  MainView.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct MainView: View {
    @State private var query: String = ""
    var body: some View {
        
    NavigationStack{
        ScrollView{
            HStack {
                Text("Categorias")
                Spacer()
                
                NavigationLink {
                    CategoryView()
                } label: {
                    Text("Tap me")
                }
                
                

                .foregroundColor(.blue)
                
            }
            
            
            
        }
        .padding()
        .navigationTitle("Boas Vindas!")
    }
    .searchable(text: $query)
    .accentColor(.black)
}
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
