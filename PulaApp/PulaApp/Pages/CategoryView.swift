//
//  CategoryView.swift
//  PulaApp
//
//  Created by Arthur Sobrosa on 11/04/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 58.22) {
                HStack(spacing: 16) {
                    ForEach(0...2, id:\.self) {
                        CategoryIcon(category: categories[$0], size: .large)
                    }
                }
                
                HStack(spacing: 16) {
                    ForEach(3...5, id:\.self) {
                        CategoryIcon(category: categories[$0], size: .large)
                    }
                }
                
                HStack(spacing: 16){
                    ForEach(6...8, id:\.self) {
                        CategoryIcon(category: categories[$0], size: .large)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
