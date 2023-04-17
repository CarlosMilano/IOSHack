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
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical, showsIndicators: false){
                        Image("Menu")
                            .resizable()
                            .frame(width: 162, height: 120)
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
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            NavigationLink(destination: ChatView(), label: {
                                Image(systemName: "questionmark.app.fill")
                                    .foregroundColor(Color("Yellow"))
                                    .font(.system(size: 37))
                            })
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
                                    NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item),
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
                                        NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item),
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
                                        NavigationLink(destination: StartCourseView(content: item, contentM: item,contentO: item),
                                                       label: { ContentItemView(content: item, contentM: item,contentO: item)})
                                       
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
