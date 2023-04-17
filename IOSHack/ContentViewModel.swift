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
        
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_c1")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_c2")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_c3")
        arrContent.append(content)
        
        content = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_c4")
        arrContent.append(content)

        
    }
    
    func getContentM(){
        
        var contentM : ContentModel
        
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_m1")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_m2")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_m3")
        arrContentM.append(contentM)
        
        contentM = ContentModel(titulo: "Chichen Itza", descripcion: "Texto por agregar.", nombreImagen: "course_m4")
        arrContentM.append(contentM)
    }
    
    func getContentO(){
        
        var contentO : ContentModel
        
        
        contentO = ContentModel(titulo: "Fin de la Pobreza", descripcion: "¡Bienvenida o bienvenido a esta lección sobre los ODS!\n\nHoy hablaremos acerca de los objetivos de desarrollo sostenible, específicamente nos enfocaremos en el ODS 1: Fin de la pobreza\n\nEs importante que aprendamos acerca de estos objetivos, ya que nos ayudarán a entender cómo podemos contribuir al bienestar de nuestro planeta y de todos los seres que lo habitan.\n\nHoy en particular, hablaremos acerca del ODS 1: Fin de la pobreza. Es importante que todos seamos amables y compartamos con los demás, incluso con aquellos que no conocemos. A través de pequeñas acciones podemos hacer una gran diferencia en la vida de alguien que lo necesita.\n\n¡Así que comencemos a aprender acerca de estos objetivos tan importantes!", nombreImagen: "ODS1")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Hambre Cero", descripcion: "¡Bienvenida o bienvenido a esta lección sobre los ODS!\n\nHoy hablaremos acerca de los objetivos de desarrollo sostenible, específicamente nos enfocaremos en el ODS 2: Hambre cero\n\nEs importante que aprendamos acerca de estos objetivos, ya que nos ayudarán a entender cómo podemos contribuir al bienestar de nuestro planeta y de todos los seres que lo habitan.\n\nHoy en particular, hablaremos acerca del el ODS 2: Hambre cero nos recuerda que muchas personas en el mundo aún sufren de hambre y falta de acceso a una alimentación adecuada. Aprenderemos cómo podemos contribuir para lograr un mundo sin hambre y con acceso a alimentos nutritivos y saludables para todos.\n\n¡Así que comencemos a aprender acerca de estos objetivos tan importantes!", nombreImagen: "ODS2")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Salud y Bienestar", descripcion: "¡Bienvenida o bienvenido a esta lección sobre los ODS!\n\nHoy hablaremos acerca de los objetivos de desarrollo sostenible, específicamente nos enfocaremos en el ODS 3: Salud y bienestar\n\nEs importante que aprendamos acerca de estos objetivos, ya que nos ayudarán a entender cómo podemos contribuir al bienestar de nuestro planeta y de todos los seres que lo habitan.\n\nHoy en particular, hablaremos acerca del el ODS 3: Salud y bienestar nos enseña la importancia de cuidar de nuestra salud y cómo podemos hacerlo, así como también de cuidar de la salud de los demás. Conoceremos algunas prácticas saludables y cómo podemos ponerlas en práctica en nuestra vida cotidiana.\n\n¡Así que comencemos a aprender acerca de estos objetivos tan importantes!", nombreImagen: "ODS3")
        arrContentO.append(contentO)
        
        contentO = ContentModel(titulo: "Educacíon de Calidad", descripcion: "¡Bienvenida o bienvenido a esta lección sobre los ODS!\n\nHoy hablaremos acerca de los objetivos de desarrollo sostenible, específicamente nos enfocaremos en el ODS 4: Educación de calidad\n\nEs importante que aprendamos acerca de estos objetivos, ya que nos ayudarán a entender cómo podemos contribuir al bienestar de nuestro planeta y de todos los seres que lo habitan.\n\nHoy en particular, hablaremos acerca del el ODS 4: Educación de calidad nos recuerda que la educación es un derecho humano fundamental y cómo podemos contribuir a que todas las personas tengan acceso a una educación de calidad.\n\n¡Así que comencemos a aprender acerca de estos objetivos tan importantes!", nombreImagen: "ODS4")
        arrContentO.append(contentO)
    }
    
}
