//
//  LoginView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 06/08/2023.
//

import SwiftUI



func logindata(json: [String: Any]){
    
    guard let jsonString = convertJSONToString(json: json) else {
        print("Erreur lors de la conversion JSON en chaîne de caractères")
        return
    }
    
    guard let url = URL(string: "http://192.168.1.15:3000/authentication/checkloginconnection") else {
        print("URL invalide")
        return
    }
    
    let requestData = ["data": jsonString]
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try! JSONSerialization.data(withJSONObject: requestData)
    
    URLSession.shared.dataTask(with: request) { (data, response, error) in
        guard let data = data, error == nil else {
            print("Erreur: \(error?.localizedDescription ?? "Inconnu")")
            return
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print("Statut de la réponse: \(httpResponse.statusCode)")
        }
        
        if let responseString = String(data: data, encoding: .utf8) {
            UserDefaults.standard.set(responseString, forKey: "tokenlogin");
        }
    }.resume()
    
}





struct LoginView: View {
    
    @Binding var currentPage: Page
    @Binding var loginfield: LoginProfilField;
    
    
    
    var body: some View {
        VStack(spacing: 50, content: {
            Text("Connexion").foregroundColor(Color.gray).fontWeight(.bold).font(.system(size: 25))
            TextField("E-mail", text: $loginfield.email);
            SecureField("Mot de passe", text: $loginfield.password);
            VStack(spacing: 2, content: {
                Button(action: {
                    print("CONNEXION BTN")
                    
                    let parameters: [String: Any] = [
                        "email": loginfield.email,
                        "password": loginfield.password
                    ]
                    
                    logindata(json: parameters);
                    
                    print("81 LOCALSTOCKAGE LOGIN \(UserDefaults.standard.string(forKey: "tokenlogin") ?? "")")
                    
//                    token_login = UserDefaults.standard.string(forKey: "tokenlogin") ?? ""
//                    print("90 ELMEENT : \(token_login)")
                    
                    
                    
                    
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
