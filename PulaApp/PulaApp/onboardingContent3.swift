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
            //title

            Text("Melhorar sua experiência")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            //subtitle
            Text("Here’s a title that can be used and can span multiple lines.Here’s a title that can be used and can span multiple lines.Here’s a title that can be used and can span multiple lines.Here’s a title that can be used and can span multiple lines.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.top, 1.0)

            //button "saiba mais..."
            Text("Saiba como melhorar sua experiência")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding(.top, 1.0)
        }
        .padding(.all, 5.0)
    }
}

struct onboardingContent3_Previews: PreviewProvider {
    static var previews: some View {
        onboardingContent3()
    }
}
