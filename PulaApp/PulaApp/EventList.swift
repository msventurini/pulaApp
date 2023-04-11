//
//  EventList.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import Foundation

struct EventList {
    static let events: [Event] = [
        Event.init(name: "Teste 1", date: Date(), description: "Evento 1", location: "Charqueadas", image: "fig1"),
        Event.init(name: "Teste 2", date: Date(), description: "Evento 2", location: "Canoas", image: "fig2"),
        Event.init(name: "Teste 3", date: Date(), description: "Evento 3", location: "PortoAlegre", image: "fig3"),
        Event.init(name: "Teste 4", date: Date(), description: "Evento 4", location: "Viamao", image: "fig4"),
    ]
}
