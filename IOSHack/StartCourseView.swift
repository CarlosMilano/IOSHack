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
    
    @Binding var courseSelected : Bool
    
    @State private var renderedText = ""
    @State var isTyping = true
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        ZStack(){
            Color("MainColor")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        Text(renderedText)
                            .font(.system(size: 20, weight: .bold ))
                            .padding()
                            .background(
                                Rectangle()
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                            )
                            .cornerRadius(10)
                            .onReceive(timer) { _ in
                                if  renderedText.count < contentO.descripcion.count {
                                    renderedText = String(contentO.descripcion.prefix(renderedText.count + 1))
                                } else {
                                    timer.upstream.connect().cancel()
                                    isTyping = false
                                }
                            }
                        Image( isTyping ? "EllieEyesOpen2" : "EllieEyesOpen")
                            .resizable()
                            .frame(width: 160, height: 116)
                            .padding(20) 
                    }
                }.padding()
                Spacer()
                Button(action: {
                            courseSelected = true
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
    @State static var courseSelected : Bool = false
    static var previews: some View {
        StartCourseView(content: ContentModel.defaultContent, contentM: ContentModel.defaultContent,contentO: ContentModel.defaultContent, courseSelected: $courseSelected)
    }
}
