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
                GradeView()
            }
            else {
                Color("MainColor")
                    .edgesIgnoringSafeArea(.all)
                Image("Menu1")
                    .scaledToFit()
                    
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
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
