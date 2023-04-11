//
//  onboardingCard.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingCard: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                TabView{
                    onboardingContent()
                    onboardingContent2()
                    onboardingContent3()
                }
                .tabViewStyle(.page)
                .background(.purple)
                Button ()
                    .primary
            }
            .accessibilityLabel("Pular")
        }
    }
}

struct onboardingCard_Previews: PreviewProvider {
    static var previews: some View {
        onboardingCard()
    }
}
