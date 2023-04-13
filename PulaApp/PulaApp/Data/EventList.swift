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
        Event.init(id: 4, name: "Teste 4", date: Date(), description: "O desfile do Juventude Bronzeada acontece no bairro Santa Tereza, um dos mais boêmios e animados de Belo Horizonte. Durante o desfile, os foliões se vestem com roupas coloridas e extravagantes, e dançam ao som das músicas do bloco. O clima é de muita alegria e diversão, e o bloco atrai pessoas de todas as idades e origens. O Juventude Bronzeada é um símbolo da cultura negra e do samba em Belo Horizonte, e uma referência para os blocos de carnaval da cidade. Se você está procurando um bloco tradicional e animado para se divertir durante o carnaval, o Juventude Bronzeada é uma excelente opção.", location: "Viamao", image: "img4", isSaved: false)
    ]
}


