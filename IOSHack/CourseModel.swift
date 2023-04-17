//
//  CourseModel.swift
//  IOSHack
//
//  Created by Carlos Milano on 17/04/23.
//

import SwiftUI
import ConcentricOnboarding

struct CourseModel: View {
    @Binding var courseSelected : Bool
    @State var currentView : Int = 0
    let contents : [CourseData] = [
        CourseData(title: "Sección 1", text: "¿Qué es la pobreza?: En esta lección, puedes enseñar a tus estudiantes qué es la pobreza, cómo se mide y cómo afecta a las personas. Puedes hacer hincapié en que la pobreza no solo se trata de no tener suficiente dinero, sino que también puede afectar la educación, la salud y el acceso a servicios básicos como el agua y el saneamiento."),
        CourseData(title: "Sección 2", text: "¿Cómo afecta la pobreza a los niños?: En esta lección, puedes enfocarte en cómo la pobreza afecta a los niños y niñas. Puedes hablar sobre cómo la falta de acceso a alimentos adecuados, atención médica y educación puede afectar su desarrollo y bienestar. También puedes discutir cómo la pobreza puede perpetuar el ciclo de la pobreza de una generación a otra."),
        CourseData(title: "Sección 3", text: "¿Cómo podemos reducir la pobreza?: En esta lección, puedes enseñar a tus estudiantes sobre las diferentes formas en que se puede reducir la pobreza. Puedes hablar sobre la importancia de la educación, la creación de empleo, el acceso a servicios básicos, la reducción de la desigualdad y la promoción del crecimiento económico sostenible. También puedes discutir cómo la cooperación internacional puede ser necesaria para abordar la pobreza a nivel global."),
        CourseData(title: "Sección 4", text: "¿Qué podemos hacer nosotros para ayudar?: En esta lección, puedes enfocarte en cómo tus estudiantes pueden ayudar a reducir la pobreza. Puedes hablar sobre cómo pueden ser voluntarios, donar a organizaciones benéficas, ahorrar agua y energía y tomar decisiones conscientes de consumo. También puedes discutir cómo pueden usar sus habilidades y talentos para ayudar a otros y hacer una diferencia positiva en el mundo.")
    ]
    
    var body: some View {
        if currentView < contents.count {
            CourseView(currentView: $currentView, page: contents[currentView], lastIndex: contents.count - 1, currentIndex: currentView)
        } else {
            CongratulationsView(courseSelected: $courseSelected)
        }
    }
}

struct CourseModel_Previews: PreviewProvider {
    @State static var courseSelected : Bool = true
    static var previews: some View {
        CourseModel(courseSelected: $courseSelected)
    }
}
