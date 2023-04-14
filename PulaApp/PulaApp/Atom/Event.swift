//
//  Event.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import Foundation

class Event: ObservableObject, Identifiable {
    let id: Int
    let name: String
    let date: Date
    let description: String
    let description1: String
    let location: String //podemos usar o mapkit posteriormente pra colocar uma informação mais relevante sobre isso!
    let location1: String
    let image: String
    @Published var isSaved: Bool
    
    init(id: Int, name: String, date: Date, description: String, description1: String, location: String, location1: String, image: String, isSaved: Bool) {
        self.id = id
        self.name = name
        self.date = date
        self.description = description
        self.description1 = description1
        self.location = location
        self.location1 = location1
        self.image = image
        self.isSaved = isSaved
    }
}
