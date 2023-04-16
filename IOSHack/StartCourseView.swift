//
//  StartCourseView.swift
//  IOSHack
//
//  Created by Erick Siller on 16/04/23.
//

import SwiftUI

struct StartCourseView: View {
    var body: some View {
        ZStack(){
            Color("MainColor")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                VStack{
                    Text("Este es el texto de dialogo del Elefante")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                Spacer()
                
                Button(action: {
                            print("¡Hola, mundo!")
                        }) {
                            Text("Pulsa aquí")
                                .padding()
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
        StartCourseView()
    }
}
