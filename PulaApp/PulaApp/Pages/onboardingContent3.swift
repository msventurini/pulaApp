//
//  onboardingContent3.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingContent3: View {
    var body: some View {
        VStack{
            Spacer()
            //title

            Text("Melhorar sua experiência")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            //subtitle
            Text("Para que sua experiência seja completa compartilhe sua localização e ative as notificações.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.top, 1.0)

            //button "saiba mais..."
            Text("Saiba como melhorar sua experiência")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding(.top, 1.0)
            Spacer()
            Spacer()

        }
        .padding(.all, 5.0)
    }
}

struct onboardingContent3_Previews: PreviewProvider {
    static var previews: some View {
        onboardingContent3()
    }
}
