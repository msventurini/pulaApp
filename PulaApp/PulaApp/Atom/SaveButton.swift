//
//  SaveButton.swift
//  PulaApp
//
//  Created by Felippo Stedile on 12/04/23.
//

import SwiftUI

struct SaveButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
                    isSet.toggle()
                } label: {
                    Label("Toggle Favorite", systemImage: isSet ? "bookmark.fill" : "bookmark")
                        .labelStyle(.iconOnly)
                        .foregroundColor(Color(.blue))
                        //.foregroundColor(isSet ? .yellow : .gray)
                }
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton(isSet: .constant(false))
    }
}
