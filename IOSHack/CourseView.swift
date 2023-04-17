//
//  CourseView.swift
//  IOSHack
//
//  Created by Carlos Milano on 17/04/23.
//

import SwiftUI

struct CourseView: View {
    @Binding var currentView : Int
    let page : CourseData
    let lastIndex : Int
    let currentIndex : Int
    @State var timerCount : Float = 3.0
    @State var TeacherNameEnd : String = "_open"
    let blinkTimer = Timer.publish(every: 0.2, on: .main, in: .common)
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack {
                    Text(page.title)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    VStack(alignment: .leading) {
                        Text(page.text)
                    }
                    .padding(.top, 5)
                    HStack {
                        HStack {}
                            .frame(maxWidth: .infinity)
                        VStack {
                            NavigationLink(destination: ChatView(), label: {
                                Image(systemName: "questionmark.app.fill")
                                    .foregroundColor(Color("Yellow"))
                                    .font(.system(size: 35))
                            })
                            VStack {}
                                .frame(maxHeight: .infinity)
                        }
                        Image("Menu" + TeacherNameEnd)
                            .resizable()
                            .frame(width: 228 / 2, height: 165 / 2)
                            .onReceive(blinkTimer) { _ in
                                timerCount += 0.2
                                TeacherNameEnd = "_open"
                                if timerCount > 5.0 {
                                    TeacherNameEnd = ""
                                    timerCount = 0
                                }
                            }
                    }
                    .frame(maxHeight: 165 / 2)
                    .padding(.top, 50)
                }
                .frame(maxHeight: .infinity)
                VStack {
                    Button(action: {
                        currentView += 1
                    }) {
                        Text("Siguiente")
                            .padding(.vertical, 14)
                            .padding(.horizontal, 48)
                            .background(Color("MainColor"))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 20))
                            .cornerRadius(8)
                            .padding(.bottom, 25)
                    }
                    HStack {
                        LazyHStack {
                            ForEach(-1..<currentIndex, id: \.self) { i in
                                Circle()
                                    .fill(Color("MainColor"))
                                    .frame(width: 25)
                                }
                        }
                        .frame(height: 25)
                        LazyHStack {
                            ForEach(currentIndex..<lastIndex, id: \.self) { i in
                                Circle()
                                    .fill(.black)
                                    .frame(width: 25)
                                    .overlay(
                                        Circle()
                                            .fill(.white)
                                            .frame(width: 18)
                                    )
                            }
                        }
                        .frame(height: 25)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(25)
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    @State static var currentView : Int = 0
    static var data : CourseData = CourseData(title: "Suma de Vectores", text: "La suma de vectores es muy similar a una suma habitual.\nPrimero, separa los valores X e Y de ambos vectores. Después, suma los valores X entre sí, y también suma los valores de Y entre sí.\nAl terminar, tendrás dos nuevos valores. El valor que obtuviste de sumar ambos valores X, será el valor X de tu nuevo vector, y lo mismo con el valor Y.\nEntonces, (X1, Y1) + (X2, Y2) = (X1+X2, Y1+Y2).")
    static var previews: some View {
        CourseView(currentView: $currentView, page: data, lastIndex: 6, currentIndex: 1)
    }
}
