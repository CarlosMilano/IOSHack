//
//  ContentView.swift
//  IOSHack
//
//  Created by Carlos Milano and Jorge Becerril Gi on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentVM = ContentViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false){
                        Image("Menu")
                            .resizable()
                            .frame(width: 101, height: 80)
                            .padding(20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            ForEach(0..<6) {_ in
                                Rectangle()
                                    .frame(width: 150, height: 40)
                                    .cornerRadius(5)
                                    .padding(.horizontal, 5)
                            }
                        }
                    }
                    VStack(alignment: .leading){
                                Text("Ciencias Naturales")
                            .foregroundColor(Color.white)
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.horizontal, 30)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack() {
                                    ForEach(contentVM.arrContent)
                                        { item in
                                            NavigationLink(destination: StartCourseView(content: item),
                                            label: { ContentItemView(content: item)})
                                            
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
