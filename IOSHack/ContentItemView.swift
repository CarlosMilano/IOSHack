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
            .cornerRadius(5)
            .frame(width: 170, height: 190)
            .padding(.horizontal,5)
    }
}

struct ContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemView(content: ContentModel.defaultContent)
    }
}
