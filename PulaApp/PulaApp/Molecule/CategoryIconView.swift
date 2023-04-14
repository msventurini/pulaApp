//
//  Category.swift
//  PulaApp
//
//  Created by Arthur Sobrosa on 11/04/23.
//
import SwiftUI

struct CategoryIcon: View {
    var category: EventCategory
    var size: IconSize
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: FestivaisPage(title: category.name)) {
                    Image(category.imgName)
                        .interpolation(.high).antialiased(true)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: printImage(size))
                }
                
                Text(category.name.uppercased())
                    .font(.subheadline)
            }
        }
    }
    
    func printImage(_ size: IconSize) -> CGFloat {
        var number: CGFloat = 0
        
        if size == .large {
            number = 106.08
        } else if size == .medium {
            number = 93
        }
        return number
    }
}

struct CategoryIcon_Previews: PreviewProvider {
    static var previews: some View {
        CategoryIcon(category: categories[0], size: .large)
    }
}
