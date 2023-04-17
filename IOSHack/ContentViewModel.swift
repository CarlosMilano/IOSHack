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
    @Published var arrContentM = [ContentModel]()
    @Published var arrContentO = [ContentModel]()
    
    init(){
        getContent()
        getContentM()
        getContentO()
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
    
    func getContentM(){
        
        var contentM : ContentModel
        
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Menu1")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema2")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema3")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "Tema4")
        arrContentM.append(contentM)
    }
    
    func getContentO(){
        
        var contentO : ContentModel
        
        
        contentO = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "ODS1")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "ODS2")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "ODS3")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", nombreImagen: "ODS4")
        arrContentO.append(contentO)
    }
    
}
