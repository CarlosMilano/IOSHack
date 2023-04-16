//
//  ContentItemView.swift
//  IOSHack
//
//  Created by Carlos Milano on 16/04/23.
//

import SwiftUI

struct ContentItemView: View {
    let content : ContentModel

    
    var body: some View {
        Image(content.nombreImagen)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .frame(width: 150, height: 170)
            .padding()
    }
}

struct ContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemView(content: ContentModel.defaultContent)
    }
}
