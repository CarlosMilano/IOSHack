//
//  ContentView.swift
//  IOSHack
//
//  Created by Carlos Milano and Jorge Becerril Gi on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    NavigationLink(destination: ChatView()) {
                        Text("Chat")
                            .frame(minWidth: 0, maxWidth: 100)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("MainColor"))
                            .cornerRadius(10)
                    }
                    .buttonStyle(PlainButtonStyle())
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
