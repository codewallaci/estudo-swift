//
//  ContentView.swift
//  estudo-swift
//
//  Created by Wallaci Aparecido on 03/06/22.
//

import SwiftUI

class FormViewModel: ObservableObject {
    @State var primeiroNome = ""
    @State var subrenome = ""
    @State var senha = ""
    @State var senhaConfirmar = ""
}

struct ContentView: View {

    @StateObject var viewModel = FormViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Primeiro nome", text: $viewModel.primeiroNome)
                        TextField("Sobrenome", text: $viewModel.subrenome)
                    }
                    Section(footer: Text("Sua senha deve ter mais de 8 caracteres.")){
                        SecureField("Crie uma senha", text: $viewModel.senha)
                        SecureField("Confirme sua senha", text: $viewModel.senhaConfirmar)
                    }
                    Section(header: Text("Seu endereço")){
                        TextField("Rua", text: $viewModel.primeiroNome)
                        TextField("Bairro", text: $viewModel.primeiroNome)
                        TextField("Cidade", text: $viewModel.primeiroNome)
                        TextField("Estado", text: $viewModel.primeiroNome)
                        TextField("CEP", text: $viewModel.primeiroNome)
                    }
                    
                }
                Divider()
                
                Section {
                    Button(action: {
                        
                    }, label: {
                        Text("Continuar")
                            .frame(width: 200,
                                   height: 50,
                                   alignment: .center)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                    .padding()
                }
            }
            .navigationTitle("Criar conta")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
