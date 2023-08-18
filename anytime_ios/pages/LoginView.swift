//
//  LoginView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 06/08/2023.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var currentPage: Page
    @Binding var loginfield: LoginProfilField;
    
    var body: some View {
        VStack(spacing: 50, content: {
            Text("Connexion").foregroundColor(Color.gray).fontWeight(.bold).font(.system(size: 25))
            TextField("E-mail", text: $loginfield.email);
            TextField("Mot de passe", text: $loginfield.password);
            VStack(spacing: 2, content: {
                Button(action: {
                    print("CONNEXION BTN")
                }, label: {
                    Text("CONNEXION").fontWeight(.bold).foregroundColor(Color.black).frame(width: UIScreen.main.bounds.width - 40, height: 50)
                }).background(.purple).frame(width: UIScreen.main.bounds.width, height: 70).padding(.horizontal , 20)
                Button(action: {
                    print("CREER UN COMPTE")
                    currentPage = Page.registerview;
                }, label: {
                    Text("Créer un compte (Inscription)").font(.system(size: 14))
                }).padding(0)
            })
            Spacer()
            
        })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(currentPage: .constant(.loginview), loginfield: .constant(.init(email: "", password: "")));
    }
}
