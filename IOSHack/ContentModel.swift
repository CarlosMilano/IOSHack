//
//  ContentModel.swift
//  IOSHack
//
//  Created by Carlos Milano on 16/04/23.
//

import Foundation

struct ContentModel : Identifiable {
    var id = UUID()
    var titulo : String
    var descripcion : String
    var nombreImagen :String
}

extension ContentModel {
    
    public static var defaultContent = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Menu")
    
}
