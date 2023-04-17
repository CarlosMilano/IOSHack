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
    @State var isTyping = true
    @State var text = ""
    @State private var renderedText = ""
    @State private var fullText = "¡Hola! ¿Que dudas tienes?"
    @State var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
     
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            ScrollView(.vertical,showsIndicators: false){
                VStack{
                    Text(renderedText)
                        .font(.system(size: 20, weight: .bold ))
                                .padding()
                                .background(
                                    Rectangle()
                                        .foregroundColor(Color.white)
                                        .cornerRadius(10)
                                )
                                .cornerRadius(10)
                                .onReceive(timer) { _ in
                                    if isTyping {
                                        if  renderedText.count < fullText.count {
                                            renderedText = String(fullText.prefix(renderedText.count + 1))
                                        } else {
                                            timer.upstream.connect().cancel()
                                            isTyping = false
                                        }
                                        
                                    }
                                }
                }
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
        fullText = ""
        renderedText = ""
        timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
        viewModel.send(text: text) {
            response in DispatchQueue.main.async {
                fullText = response
                fullText = fullText.trimmingCharacters(in: .whitespacesAndNewlines)
                print("Respuesta: ", fullText)
                isTyping = true
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
