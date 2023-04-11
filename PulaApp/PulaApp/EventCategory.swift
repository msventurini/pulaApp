//
//  EventCategory.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 10/04/23.
//

import Foundation

struct Categoria: Hashable {
    let name: String
    let imgName: String
}

enum Size {
    case large
    case medium
}

var images: [Categoria] = [Categoria(name: "BLOCOS", imgName: "blocos"), Categoria(name: "CORTEJOS", imgName: "cortejos"), Categoria(name: "DESFILES", imgName: "desfiles"), Categoria(name: "SHOWS", imgName: "shows"), Categoria(name: "BAILES", imgName: "bailes"), Categoria(name: "FESTIVAIS", imgName: "festivais"), Categoria(name: "TRIOS", imgName: "trios"), Categoria(name: "ATIVIDADES", imgName: "atividades"), Categoria(name: "EVENTOS", imgName: "eventos")]
