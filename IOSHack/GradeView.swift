//
//  GradeView.swift
//  IOSHack
//
//  Created by Carlos Milano on 16/04/23.
//

import SwiftUI
import ConcentricOnboarding

struct GradeView: View {
    
    @State private var currentIndex: Int = 0
    @State var gradeSelected = false
    
    let data : [GradeData] = [
        GradeData(title: "Primer", titleColor: .white, imageName: "mascot_green", color: Color("MainColor"), textColor: Color("SecondaryColor")),
        GradeData(title: "Segundo", titleColor: .black, imageName: "Menu", color: Color("SecondaryColor"), textColor: Color("MainColor")),
        GradeData(title: "Tercer", titleColor: .white, imageName: "mascot_orange", color: Color("MainColor"), textColor: Color("SecondaryColor")),
        GradeData(title: "Cuarto", titleColor: .black, imageName: "mascot_purple", color: Color("SecondaryColor"), textColor: Color("MainColor"))
    ]
    
    var body: some View {
        if !gradeSelected{
            ConcentricOnboardingView(pageContents: data.map { (GradeSectionView(gradeSelected: $gradeSelected, page: $0), $0.color) })
                .duration(1.0)
                .nextIcon("chevron.right")
        }
        else {
            ContentView(gradeSelected: $gradeSelected)
        }
    }
}


struct GradeView_Previews: PreviewProvider {
    static var previews: some View {
        GradeView()
    }
}
