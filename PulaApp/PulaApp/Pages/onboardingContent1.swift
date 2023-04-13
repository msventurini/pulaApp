//
//  Onboarding.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingContent1: View {
    var body: some View {
        // Onboarding content 1
        VStack {
            Text("Boas-vindas ao App Pula!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)

            Image("memoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding()
    }
}

struct onboardingContent1_Previews: PreviewProvider {
    static var previews: some View {
        onboardingContent1()
    }
}
