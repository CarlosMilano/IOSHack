//
//  ContentView.swift
//  IOSHack
//
//  Created by Carlos Milano and Jorge Becerril Gi on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentVM = ContentViewModel()
    @StateObject var contentVM2 = ContentViewModel()
    @StateObject var contentVM3 = ContentViewModel()
    @State var courseSelected = false
    @Binding var gradeSelected: Bool
    
    
    var body: some View {
        if !courseSelected {
            NavigationView{
                ZStack{
                    Color("MainColor")
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(.vertical, showsIndicators: false){
                        Image("Menu")
                            .resizable()
                            .frame(width: 162, height: 120)
                            .padding(.vertical,5)
                        Text("300")
                            .padding(.horizontal,10)
                            .font(.system(size: 20, weight: .bold ))
                            .background(Color("Yellow"))
                            .cornerRadius(5)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                        ScrollView(.horizontal, showsIndicators: false) {
                                HStack() {
                                    Text("Ciencas Naturales")
                                        .padding()
                                        .font(.system(size: 20, weight: .bold ))
                                        .background(
                                            Rectangle()
                                                .foregroundColor(Color.white)
                                                .cornerRadius(7)
                                        )
                                    Text("Matemáticas")
                                        .padding()
                                        .font(.system(size: 20, weight: .bold ))
                                        .background(
                                            Rectangle()
                                                .foregroundColor(Color.white)
                                                .cornerRadius(7)
                                        )
                                    Text("Desarrollo Sostenible")
                                        .padding()
                                        .font(.system(size: 20, weight: .bold ))
                                        .background(
                                            Rectangle()
                                                .foregroundColor(Color.white)
                                                .cornerRadius(7)
                                        )}
                            }
                        .padding(.horizontal,7)
                        .toolbar{
                            ToolbarItem(placement: .navigationBarTrailing){
                                NavigationLink(destination: ChatView(), label: {
                                    Image(systemName: "questionmark.app.fill")
                                        .foregroundColor(Color("Yellow"))
                                        .font(.system(size: 35))
                                })
                            }
                            ToolbarItem(placement: .navigationBarLeading){
                                Button(action: {
                                    gradeSelected = false
                                    })
                                {
                                    Text("GRADOS")
                                        .padding(5)
                                        .background(Color("Yellow"))
                                        .cornerRadius(5)
                                        .foregroundColor(Color("MainColor"))
                                        .padding(5)
                                }
                            }
                        }
                        .toolbarBackground(Color("MainColor"), for: .automatic)
                        
                        VStack{
                            VStack(alignment: .leading){
                                Text("Ciencias Naturales")
                                    .foregroundColor(Color.white)
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 10)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack() {
                                        ForEach(contentVM.arrContent)
                                        { item in
                                            NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item, courseSelected: $courseSelected),
                                                           label: { ContentItemView(content: item, contentM: item,contentO: item)})
                                            
                                        }
                                    }
                                }
                            }
                            VStack(alignment: .leading){
                                Text("Desarrollo Sostenible")
                                    .foregroundColor(Color.white)
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 10)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack() {
                                        ForEach(contentVM3.arrContentO)
                                        { item in
                                            NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item, courseSelected: $courseSelected),
                                                           label: { ContentItemView(content: item, contentM: item,contentO: item)})
                                            
                                        }
                                    }
                                }
                            }
                            VStack(alignment: .leading){
                                Text("Matemáticas")
                                    .foregroundColor(Color.white)
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 10)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack() {
                                        ForEach(contentVM2.arrContentM)
                                        { item in
                                            NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item, courseSelected: $courseSelected),
                                                           label: { ContentItemView(content: item, contentM: item,contentO: item)})
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            CourseModel(courseSelected: $courseSelected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var gradeSelected = false
    static var previews: some View {
        ContentView(gradeSelected: $gradeSelected)
    }
}
