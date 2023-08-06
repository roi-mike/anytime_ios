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
        VStack(alignment: .leading, spacing: 5, content: {
            HStack(alignment:.center, spacing: 15, content: {
                Button(action: {
                    currentPage = .profilview
                    print("LOG currebtPage PHOTO :")
                }) {
                    ProfileImageView(width: 80, height: 90)
                }.frame(width: 85, height: 95).padding(.leading, -50)
                HStack(spacing: 30, content: {
                    VStack(content: {
                        Text("54")
                        Text("QCM")
                    })
                    VStack(content: {
                        Text("3")
                        Text("Livres")
                    })
                    VStack(content: {
                        Text("54")
                        Text("Exercices")
                    })
                })
            }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 8, alignment: .top).padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Maboza Hondi Samuel").font(.system(.headline))
                Text("On sait depuis longtemps que travailler avec du texte lisible").lineLimit(nil)
            }).frame(width: UIScreen.main.bounds.width / 1.2, height: UIScreen.main.bounds.height / 10, alignment: .leading).padding(.leading, 10)
            
            HStack(alignment: .center, spacing: 0, content: {
                Button(action: {
                    
                }, label: {
                    Text("Edit Profil")
                }).frame(width: UIScreen.main.bounds.width / 1.1, height: 50, alignment: .center).background(.gray)
            }).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
            
            
            
            
            
        }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
    }
}



struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(currentPage: .constant(.profilview))
    }
}
