//
//  Event.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import Foundation

struct Event: Identifiable {
    let id: Int
    let name: String
    let date: Date
    let description: String
    let location: String //podemos usar o mapkit posteriormente pra colocar uma informação mais relevante sobre isso!
    let image: String
    var isSaved: Bool
    
    init(id: Int, name: String, date: Date, description: String, location: String, image: String, isSaved: Bool) {
        self.id = id
        self.name = name
        self.date = date
        self.description = description
        self.location = location
        self.image = image
        self.isSaved = isSaved
    }
}
