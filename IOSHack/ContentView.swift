//
//  ContentView.swift
//  IOSHack
//
//  Created by Carlos Milano and Jorge Becerril Gi on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false){
                        Image("Menu")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding(.top,20)
                        Text("Learn It")
                            .bold()
                            .font(.largeTitle)
                    VStack(alignment: .leading){
                        ForEach(0..<5){_ in
                                Text("Biologia")
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 5)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack() {
                                    ForEach(0..<6) {_ in
                                        Rectangle()
                                            .frame(width: 150, height: 170)
                                            .cornerRadius(20)
                                            .padding(.horizontal, 5)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
