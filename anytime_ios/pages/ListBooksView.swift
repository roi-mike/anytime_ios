//
//  ListBooksView.swift
//  anytime_ios
//
//  Created by samuel maboza hondi on 05/08/2023.
//

import SwiftUI

struct ListBooksView: View {
    
    @Binding var currentPage: Page;
    
    var body: some View {
        NavigationView{
            VStack(content: {
                Text("LISTE DES LIVRES A LIRE")
                
                Button(action: {
                    currentPage = .topicslearnview;
                }, label: {
                    Text("RETOURNER ACCUEIL")
                })
            })
        }
    }
}

struct ListBooksView_Previews: PreviewProvider {
    static var previews: some View {
        ListBooksView(currentPage: .constant(.listbooksview))
    }
}
