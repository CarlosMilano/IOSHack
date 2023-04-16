//
//  SplashView.swift
//  IOSHack
//
//  Created by Carlos Milano on 15/04/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isAvtive: Bool = false
    
    var body: some View {
        ZStack{
            if self.isAvtive{
                ContentView()
            }
            else {
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                Image("LearnIt")
                    .scaledToFit()
                    
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    self.isAvtive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
