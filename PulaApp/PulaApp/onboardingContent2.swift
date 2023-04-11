//
//  onboardingContent2.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingContent2: View {
    var body: some View {
        VStack {
            // title
            Text("Acompanhe todos eventos de carnaval!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            //subtitle
            Text("Fique sabendo de tudo que está acontecendo durante o carnaval em Belo Horizonte.")
                .multilineTextAlignment(.center)
                .padding(.top)
            
            //features list
            VStack {
                //  -> feature 1
                HStack {
                    Image(systemName: "calendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40.0)
                        .padding(.all, 4.0)
                    
                    Spacer()
                    
                    VStack (alignment:.leading) {
                        Text("Eventos")
                            .fontWeight(.semibold)
                        Text("Escolha uma visualização de eventos lado a lado ou face a face")
                            .foregroundColor(Color.gray)
                    }
                }
                //  -> feature 2
                HStack {
                    Image(systemName: "map")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40.0)
                        .padding(.horizontal, 4.0)
                    
                    Spacer()
                    
                    VStack (alignment:.leading) {
                        Text("Mapa")
                            .fontWeight(.semibold)
                        Text("Permite que você veja no mapa onde cada evento vai acontecer.")
                            .foregroundColor(Color.gray)
                    }
                }
                //  -> feature 3
                HStack {
                    Image(systemName: "mappin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18.0, height: 45.0)
                        .padding()
                    
                    Spacer()
                    
                    VStack (alignment:.leading) {
                        Text("Localização")
                            .fontWeight(.semibold)
                        Text("Compartilhe sua localização atual para ver os eventos próximos.")
                            .foregroundColor(Color.gray)
                    }
                }

                //  -> feature 4
                HStack {
                    Image(systemName: "bookmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28.0)
                        .padding(.horizontal, 9.0)
                    
                    Spacer()
                    
                    VStack (alignment:.leading) {
                        Text("Salvos")
                            .fontWeight(.semibold)
                        Text("Salve seus eventos preferidos para não perder nada.")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .padding(.all)
        }
    }
}

struct onboardingContent2_Previews: PreviewProvider {
    static var previews: some View {
        onboardingContent2()
    }
}
