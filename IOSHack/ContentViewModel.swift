//
//  ContentViewModel.swift
//  IOSHack
//
//  Created by Carlos Milano on 16/04/23.
//

import Foundation
import SwiftUI

class ContentViewModel : ObservableObject {
    
    @Published var arrContent = [ContentModel]()
    
    init(){
        getContent()
    }
    
    
    func getContent() {
        
        var content : ContentModel
        
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema1")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema2")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema3")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema4")
        arrContent.append(content)

        
    }
    
}
