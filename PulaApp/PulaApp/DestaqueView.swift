//
//  DestaqueView.swift
//  PulaApp
//
//  Created by Felippo Stedile on 11/04/23.
//

import SwiftUI

struct destaqueView: View {
    var eventName: String
    var imageName: String
    var date: String
    var location: String
    
    var body: some View {
        VStack(alignment: .leading){
            Image(imageName)
                .resizable()//acertar esses com as novas assets
                .scaledToFit()//
                .frame(width: 250)//
                .cornerRadius(8)
                
            Text(date)//colocar o date como texto
                .font(.headline)
                .fontWeight(.black)
                .padding(.vertical)
                
            Text(eventName)
                .font(.body)
                .fontWeight(.medium)

            Text(location)
                .font(.caption)
                .fontWeight(.light)
                
        }
        .padding(.horizontal)
        .multilineTextAlignment(.leading)
        .aspectRatio(contentMode: .fit)
    }
}

struct destaqueView_Previews: PreviewProvider {
    static var previews: some View {
        destaqueView(eventName: "negocio", imageName: "fig1", date: "hora dia", location: "Charqueadas")
    }
}
