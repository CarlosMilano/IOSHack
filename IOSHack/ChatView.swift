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
            let output = model.choices?.first?.text ?? ""
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
                TextField("¿Cual es tu duda?", text: $text ) .frame(height: 30)
                    .padding(12)
                    .font(.system(size: 20, weight: .bold ))
                    .background(Color.white)
                    .cornerRadius(8)
                Button(action: {
                    send()
                }) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(Color("MainColor"))
                        .font(.system(size: 37))
                }
                .padding(6)
                .background(Color("Yellow"))
                .cornerRadius(8)
            }
        }
        .onAppear{
            viewModel.setup()
        }
        .padding()
        .background(Color("MainColor"))
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
