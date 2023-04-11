//
//  Onboarding.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingContent: View {
    var body: some View {
        // Onboarding content 1
        VStack {
            Text("Boas-vindas ao App Pula!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("Here’s a title that can be used and can span multiple lines.")
                .multilineTextAlignment(.center)
                .padding(.top)
            Image("memoji")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding()
    }
}

struct onboardingContent_Previews: PreviewProvider {
    static var previews: some View {
        onboardingContent()
    }
}
