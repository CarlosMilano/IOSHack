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
        CourseData(title: "Lorem 1", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum ut tristique et. Sit amet consectetur adipiscing elit duis tristique sollicitudin. Sed felis eget velit aliquet sagittis id consectetur. A diam sollicitudin tempor id eu nisl nunc mi.\nTortor at auctor urna nunc id cursus metus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed libero enim sed faucibus turpis in eu mi bibendum."),
        CourseData(title: "Lorem 2", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nOrnarcu dui viv turpis tincidunt id aliquet risus feugiat. Sed libero enim sed faucibus turpis in eu mi bibendum."),
        CourseData(title: "Lorem 3", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt u et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum ut tristique et. Sit amet consectetur adipiscing elit duis tristique sollicitudin. Sed felis eget velit alit labore et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum ut tristique et.\nSit amet consectetur adipiscing elit duis tristique sollicitudin. Sed felis eget velit aliquet sagittis id consectetur. A diam sollicitudin tempor id eu nisl nunc mi.\nTortor at auctor urna nunc id cursus metus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed libero enim sed faucibus turpis in eu mi bibendum."),
        CourseData(title: "Lorem 4", text: "Lorem ipsum dolor sit aor at auctor urna nunc id cursus metus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed libmet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum ut tristique et. .\nTortor at auctor urna nunc id cursus metus. Lacus sed turpis tincidunt id aliquet risus feugiat. Sed libero enim sed faucibus turpis in eu mi bibendum.")
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
