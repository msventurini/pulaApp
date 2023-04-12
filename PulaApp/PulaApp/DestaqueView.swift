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
                .cornerRadius(8)
                
            Text(date)//colocar o date como texto
                .font(.caption)
                .fontWeight(.semibold)
                .padding(.vertical, 1.0)
                
            Text(eventName)
                .font(.body)
                .fontWeight(.regular)

            Text(location)
                .font(.caption)
                .fontWeight(.regular)
                
        }
        .padding(.horizontal)
        .aspectRatio(contentMode: .fit)
    }
}

struct destaqueView_Previews: PreviewProvider {
    static var previews: some View {
        destaqueView(eventName: "negocio", imageName: "323797023_572948307545591_7554953123518424738_n", date: "hora | dia", location: "Charqueadas")        
    }
}
