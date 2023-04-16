//
//  ChatView.swift
//  IOSHack
//
//  Created by Erick Siller on 15/04/23.
//

import SwiftUI
import OpenAISwift

final class ViewModel: ObservableObject{
    init(){}
    
    private var client: OpenAISwift?
    
    func setup(){
        client = OpenAISwift(authToken: "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")
    }
    
    func send( text: String, completion: @escaping (String) -> Void ){
        client?.sendCompletion(with: text, maxTokens: 500, completionHandler: { result in switch result {
        case .success(let model):
            let output = model.choices?[0].text ?? ""
            completion(output)
        case .failure:
            completion("hubo un error")
            break
        } })
    }
}

struct ChatView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @State var text = ""
    @State var models = [String]()
    
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(models, id: \.self){ string in
                Text(string)
            }
            Spacer()
            
            HStack{
                TextField("Escribe aqui...", text: $text )
                Button("Send"){
                    send()
                }
            }
        }
        .onAppear{
            viewModel.setup()
        }
        .padding()
    }
    func send(){
        guard !text.trimmingCharacters(in: .whitespaces).isEmpty else{
            return
        }
        models.append( "Me: \(text)")
        viewModel.send(text: text) {
            response in DispatchQueue.main.async {
                self.models.append("Maestro Elefante: "+response)
                self.text = ""
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
