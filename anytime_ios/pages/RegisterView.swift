//
//  RegisterView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct Data: Decodable {
    var first_name: String
    var last_name: String
    var email: String
    var password: String
}

func convertJSONToString(json: [String: Any]) -> String? {
    do {
        let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
        let jsonString = String(data: jsonData, encoding: .utf8)
        return jsonString
    } catch {
        print("Erreur lors de la conversion JSON en chaîne de caractères : \(error.localizedDescription)")
        return nil
    }
}

func sendData(json: [String: Any]) {
    guard let jsonString = convertJSONToString(json: json) else {
        print("Erreur lors de la conversion JSON en chaîne de caractères")
        return
    }
    
    guard let url = URL(string: "http://192.168.1.15:3000/authentication/saveregistercustomer") else {
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
            print("REP --- : \(responseString)")
        }
    }.resume()
}

struct RegisterView: View {
    @Binding var currentPage: Page
    @Binding var registerProfilField: RegisterProfilField
    
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Inscription")
                .foregroundColor(Color.gray)
                .fontWeight(.bold)
                .font(.system(size: 25))
            
            TextField("Nom", text: $registerProfilField.first_name)
            TextField("Prénom", text: $registerProfilField.last_name)
            TextField("Email", text: $registerProfilField.email)
            SecureField("Mot de passe", text: $registerProfilField.password)
            
            VStack(spacing: 2) {
                Button(action: {
                    print("Register BTN")
                    
                    let parameters: [String: Any] = [
                        "first_name": registerProfilField.first_name,
                        "last_name": registerProfilField.last_name,
                        "email": registerProfilField.email,
                        "password": registerProfilField.password
                    ]
                    
                    sendData(json: parameters)
                }) {
                    Text("INSCRIPTION")
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                }
                .background(Color.purple)
                .frame(width: UIScreen.main.bounds.width, height: 70)
                .padding(.horizontal , 20)
                
                Button(action: {
                    print("CREER UN COMPTE")
                    currentPage = .topicslearnview
                }) {
                    Text("Me connecter (Connexion)")
                        .font(.system(size: 14))
                }
                .padding(0)
            }
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(currentPage: .constant(.registerview), registerProfilField: .constant(.init(first_name: "", last_name: "", email: "", password: "")))
    }
}
