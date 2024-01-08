//
//  SplashView.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image(.splash)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                    
                    VStack {
                        TextField("Usuario", text: $userName)
                            .frame(width: 300)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        
                        SecureField("Contraseña", text: $password)
                            .frame(width: 300)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal, 20)
                        
                        Button("Entrar") {
                            print("Usuario: \(userName), Contraseña: \(password)")
                            
                        }
                        .buttonStyle(LoginButtonStyle())
                        .padding()
                        
                        
                    }
                )
        }
    }
}
struct LoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(configuration.isPressed ? Color.gray : Color.blue)
            .cornerRadius(8)
    }
}

#Preview {
    LoginView()
}

