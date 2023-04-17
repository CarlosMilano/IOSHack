//
//  GradeSectionView.swift
//  IOSHack
//
//  Created by Carlos Milano on 16/04/23.
//

import SwiftUI

struct GradeSectionView: View {
    @State var imageNameEnding: String = "_open"
    @State var timerCount: Float = 3.0
    let page : GradeData
    let blinkTimer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView{
            ZStack {
                page.color
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack(alignment: .leading){
                        Text(page.title)
                            .fontWeight(.black)
                            .font(.system(size: 58))
                            .foregroundColor(page.titleColor)
                            .frame(alignment: .trailing)
                        Text("Grado")
                            .fontWeight(.light)
                            .font(.system(size: 58))
                            .padding(.trailing, 180)
                            .padding(.top, -40)
                            .foregroundColor(page.titleColor)
                    }
                    Image(page.imageName + imageNameEnding)
                        .resizable()
                        .frame(width: 228, height: 165)
                        .padding(.top, 48)
                        .padding(.trailing, 25)
                        .onReceive(blinkTimer) { _ in
                            imageNameEnding = "_open"
                            timerCount += 0.2
                            if (timerCount > 4.0) {
                                timerCount = 0.0
                                imageNameEnding = ""
                            }
                        }
                    Button(action: {
                        })
                    {
                        Text("¡Vamos!")
                            .padding(.vertical, 14)
                            .padding(.horizontal, 48)
                            .background(page.textColor)
                            .foregroundColor(page.color)
                            .fontWeight(.medium)
                            .font(.system(size: 20))
                            .cornerRadius(8)
                            .padding(.top, 24)
                    }
                }
            }
        }
    }
}
