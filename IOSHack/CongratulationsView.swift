//
//  CongratulationsView.swift
//  IOSHack
//
//  Created by Erick Siller on 16/04/23.
//

import SwiftUI
import ConfettiSwiftUI

struct CongratulationsView: View {
    @State private var counter: Int = 0
    @State var firstTextRender = true
    @State var isTyping = true
    @State var isTyping1 = false
    @State private var renderedText = ""
    @State private var fullText = "¡Felicidades!\n\n¡Completamos la leccíon de hoy!"
    @State private var renderedText1 = ""
    @State private var fullText1 = " ¡Platica con un amigo o familiar acerca de lo que aprendiste!"
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var timer1 = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
        
        var body: some View {
            
            
            ZStack {
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    Text(renderedText)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 32, weight: .bold ))
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                                .onReceive(timer) { _ in
                                    if isTyping && firstTextRender {
                                        if  renderedText.count < fullText.count {
                                            renderedText = String(fullText.prefix(renderedText.count + 1))
                                        } else {
                                            timer.upstream.connect().cancel()
                                            isTyping = false
                                        }
                                        
                                    }
                                }
                    Image( isTyping || isTyping1 ? "EllieEyesOpen2" : "EllieEyesOpen")
                        .resizable()
                        .frame(width: 271, height: 196)
                        .padding(20)
                    Spacer()
                    Button(action: {
                        counter += 1
                        isTyping1 = true
                        firstTextRender = false
                        timer1 = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
                    }) {
                        Text("🎉")
                            .font(.system(size: 50))
                    } 
                    .confettiCannon(counter: $counter)
                    Text(renderedText1)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 23, weight: .bold ))
                                .foregroundColor(.white)
                                .padding()
                                .cornerRadius(10)
                                .onReceive(timer1) { _ in
                                    if isTyping1 && !firstTextRender{
                                        if  renderedText1.count < fullText1.count {
                                            renderedText1 = String(fullText1.prefix(renderedText1.count + 1))
                                        } else {
                                            timer1.upstream.connect().cancel()
                                            isTyping1 = false
                                        }
                                        
                                    }
                                }
                    Spacer()
                    Button(action: {
                                print("¡Hola, mundo!")
                            }) {
                                Text("Continuar")
                                    .font(.system(size: 20, weight: .bold ))
                                    .padding(.horizontal,50)
                                    .padding(.vertical)
                                    .foregroundColor(.black)
                                    .background(Color("Yellow"))
                                    .cornerRadius(10)
                            }
                        .frame(width: 200, height: 50)
                }
                .padding()
            }
        }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}
