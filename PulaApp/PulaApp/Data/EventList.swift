//
//  EventList.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import Foundation

struct EventList {
    static let events: [Event] = [
        Event.init(id: 1, name: "Teste 1", date: Date(), description: "Evento 1", location: "Charqueadas", image: "img1", isSaved: false),
        Event.init(id: 2, name: "Teste 2", date: Date(), description: "Evento 2", location: "Canoas", image: "img2", isSaved: true),
        Event.init(id: 3, name: "Teste 3", date: Date(), description: "Evento 3", location: "PortoAlegre", image: "img3", isSaved: false),
        Event.init(id: 4, name: "Teste 4", date: Date(), description: "Evento 4", location: "Viamao", image: "img4", isSaved: false)
    ]
}


