//
//  ProfilView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct ProfilView: View {
    
    @Binding var currentPage: Page;
    
    
    var body: some View {
        NavigationView{
            VStack(content: {
                Text("MON PROFIL ")
                
                Button(action: {
                    currentPage = .topicslearnview;
                }, label: {
                    Text("RETOURNER ACCUEIL")
                })
            })
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(currentPage: .constant(.profilview))
    }
}
