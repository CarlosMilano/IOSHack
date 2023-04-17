//
//  StartCourseView.swift
//  IOSHack
//
//  Created by Erick Siller on 16/04/23.
//

import SwiftUI

struct StartCourseView: View {
    
    let content : ContentModel
    let contentM : ContentModel
    let contentO : ContentModel

    
    var body: some View {
        ZStack(){
            Color("MainColor")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                VStack{
                    Text(contentO.descripcion)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                }
                Spacer()
                Image("Menu")
                    .resizable()
                    .frame(width: 162, height: 120)
                Spacer()
                Button(action: {
                            print("¡Hola, mundo!")
                        }) {
                            Text("Empezar")
                                .font(.system(size: 20, weight: .bold ))
                                .padding(.horizontal,50)
                                .padding(.vertical)
                                .foregroundColor(.black)
                                .background(Color("Yellow"))
                                .cornerRadius(10)
                        }
                    .frame(width: 200, height: 50)
            }
        }
    }
    
}

struct StartCourseView_Previews: PreviewProvider {
    static var previews: some View {
        StartCourseView(content: ContentModel.defaultContent, contentM: ContentModel.defaultContent,contentO: ContentModel.defaultContent)
    }
}
