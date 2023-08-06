//
//  EditProfilView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 06/08/2023.
//

import SwiftUI

struct EditProfilView: View {
    
    @Binding var currentPage: Page
    
    @Binding var editprofilfield: EditProfilField;
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12, content: {
            VStack(alignment: .center, spacing: 5, content: {
                Text("Edit Profil").font(.title2)
                ProfileImageView(width: 100, height: 110)
                Button(action: {
                    currentPage = .topicslearnview // A CHANGER
                }, label: {
                    Text("Changer Profil Photo").font(.system(.title3)).foregroundColor(Color.blue)
                }).frame(width: UIScreen.main.bounds.width / 2, height: 45, alignment: .center)
                
            }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5, alignment: .center)
            
            
            VStack(alignment: .leading, spacing: 15, content: {
                TextField("f_name", text: $editprofilfield.f_name)
                TextField("l_name", text: $editprofilfield.l_name)
                TextField("email", text: $editprofilfield.email)
                TextField("phone", text: $editprofilfield.phone)
            })
            
            
            
            
            
            
            
        }).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top)
    }
}

struct EditProfilView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfilView(currentPage: .constant(.editprofilview), editprofilfield: .constant(.init(f_name: "", l_name: "", email: "", phone: "")))
    }
}
